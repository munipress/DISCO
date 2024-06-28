<?php

/**
 * @file plugins/generic/disco/DISCOPlugin.inc.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class DISCOPlugin
 * @ingroup plugins_generic_disco
 * @brief Discoverability companion plugin
 */
import('lib.pkp.classes.plugins.GenericPlugin');

class DISCOPlugin extends GenericPlugin {

    /**
     * @copydoc Plugin::getDisplayName()
     */
    function getDisplayName() {
        return __('plugins.generic.disco.displayName');
    }

    /**
     * @copydoc Plugin::getDescription()
     */
    function getDescription() {
        return __('plugins.generic.disco.description');
    }

    /**
     * @copydoc Plugin::register()
     */
    function register($category, $path, $mainContextId = null) {
        if (!parent::register($category, $path, $mainContextId))
            return false;
        
        if ($this->getEnabled()) {
            
//				// Register the Discoverability companion DAO.
//				import('plugins.generic.disco.classes.discoDAO');
//				$discoDao = new discoDAO();
//				DAORegistry::registerDAO('discoDAO', $discoDao);

            HookRegistry::register('Template::Settings::website', array($this, 'callbackShowWebsiteSettingsTabs'));

        }
        return true;
    }

    /**
     * Extend the website settings tabs to include Discoverability companion plugin
     * @param $hookName string The name of the invoked hook
     * @param $args array Hook parameters
     * @return boolean Hook handling status
     */
    function callbackShowWebsiteSettingsTabs($hookName, $args) {
        $templateMgr = $args[1];
        $output = & $args[2];
        $output .= $templateMgr->fetch($this->getTemplateResource('discoPluginTab.tpl'));
        
        // Permit other plugins to continue interacting with this hook
        return false;
    }

    /**
     * @copydoc Plugin::getActions()
     */
    public function getActions($request, $verb) {
        $router = $request->getRouter();
        import('lib.pkp.classes.linkAction.request.AjaxModal');
        return array_merge(
                $this->getEnabled() ? array(
            new LinkAction(
                    'settings',
                    new AjaxModal(
                            $router->url($request, null, null, 'manage', null, array('verb' => 'settings', 'plugin' => $this->getName(), 'category' => 'generic')),
                            $this->getDisplayName()
                    ),
                    __('manager.plugins.settings'),
                    null
            ),
                ) : array(),
                parent::getActions($request, $verb)
        );
    }

    /**
     * @copydoc Plugin::manage()
     */
    function manage($args, $request) {
        switch ($request->getUserVar('verb')) {
            case 'settings':
                $context = $request->getContext();

                AppLocale::requireComponents(LOCALE_COMPONENT_APP_COMMON, LOCALE_COMPONENT_PKP_MANAGER);
                $templateMgr = TemplateManager::getManager($request);
                $templateMgr->registerPlugin('function', 'plugin_url', array($this, 'smartyPluginUrl'));

                $this->import('DISCOSettingsForm');
                $form = new DISCOSettingsForm($this, $context->getId());

                if ($request->getUserVar('save')) {
                    $form->readInputData();
                    if ($form->validate()) {
                        $form->execute();
                        return new JSONMessage(true);
                    }
                } else {
                    $form->initData();
                }
                return new JSONMessage(true, $form->fetch($request));
        }
        return parent::manage($args, $request);
    }
}
