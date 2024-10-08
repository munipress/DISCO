<?php

/**
 * @file plugins/generic/disco/DiscoPlugin.inc.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class DiscoPlugin
 * @ingroup plugins_generic_disco
 *
 * @brief Discoverability companion plugin
 */
import('lib.pkp.classes.plugins.GenericPlugin');

class DiscoPlugin extends GenericPlugin {

    /**
     * @copydoc Plugin::getName()
     */
    function getName() {
        return 'DiscoPlugin';
    }

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
            HookRegistry::register('Template::Settings::website', array($this, 'callbackShowWebsiteSettingsTabs'));            
            HookRegistry::register('TemplateManager::display',array($this, 'addDiscoStyles'));
        }
        return true;
    }

    /**
     * Extend the website settings tabs to include static pages
     * @param $hookName string The name of the invoked hook
     * @param $args array Hook parameters
     * @return boolean Hook handling status
     */
    function callbackShowWebsiteSettingsTabs($hookName, $args) {
        $templateMgr = $args[1];
        $output = & $args[2];
        $templateMgr->assign("discoAppearance",$this->getTemplateResource('discoAppearance.tpl'));
        $templateMgr->assign("discoDiamond",$this->getTemplateResource('discoDiamond.tpl'));
        $templateMgr->assign("discoGeneralRecommendation",$this->getTemplateResource('discoGeneralRecommendation.tpl'));
        $templateMgr->assign("discoImpactRecommendation",$this->getTemplateResource('discoImpactRecommendation.tpl'));
        $templateMgr->assign("discoInformation",$this->getTemplateResource('discoInformation.tpl'));
        $templateMgr->assign("discoLandingPages",$this->getTemplateResource('discoLandingPages.tpl'));
        $templateMgr->assign("discoMetadata",$this->getTemplateResource('discoMetadata.tpl'));
        $templateMgr->assign("discoMetadataQuality",$this->getTemplateResource('discoMetadataQuality.tpl'));
        $templateMgr->assign("discoRegularity",$this->getTemplateResource('discoRegularity.tpl'));
        $templateMgr->assign("discoResults",$this->getTemplateResource('discoResults.tpl'));
        $templateMgr->assign("discoPolicy",$this->getTemplateResource('discoPolicy.tpl'));
        $templateMgr->assign("discoSeo",$this->getTemplateResource('discoSeo.tpl'));
        $output .= $templateMgr->fetch($this->getTemplateResource('discoTab.tpl'));
        
        // Permit other plugins to continue interacting with this hook
        return false;
    }

    /**
	 * 
	 */
	function addDiscoStyles($hookName, $params) {
		$templateMgr = $params[0];
		$request = $this->getRequest();
                $discoStyles = $this->getStyleSheetURL($request, false) . DIRECTORY_SEPARATOR . 'disco.less';

		$templateMgr->addStylesheet(
			'DiscoStyles',
                        $discoStyles,
			array('contexts' => 'backend')
		);
		return false;
	}
//        
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
     * Get the JavaScript URL for this plugin.
     */
    function getJavaScriptURL() {
            return Application::get()->getRequest()->getBaseUrl() . DIRECTORY_SEPARATOR . $this->getPluginPath() . DIRECTORY_SEPARATOR . 'js';
    }
    
    /**
     * Get the StyleSheet URL for this plugin.
     */
    function getStyleSheetURL() {
            return Application::get()->getRequest()->getBaseUrl() . DIRECTORY_SEPARATOR . $this->getPluginPath() . DIRECTORY_SEPARATOR . 'styles';
    }

}
