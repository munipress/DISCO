<?php

/**
 * @file plugins/generic/disco/DISCOSettingsForm.inc.php
 *
 * Copyright (c) 2014-2024 Simon Fraser University
 * Copyright (c) 2003-2024 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class DISCOSettingsForm
 * @ingroup plugins_generic_disco
 *
 * @brief Form for journal managers to setup Discoverability companion plugin
 */


import('lib.pkp.classes.form.Form');

class DISCOSettingsForm extends Form {

	//
	// Private properties
	//
	/** @var integer */
	var $_contextId;

        /** @var $plugin object */
	public $plugin;
        
	/**
	 * Get the context ID.
	 * @return integer
	 */
	function _getContextId() {
		return $this->_contextId;
	}

	//
	// Constructor
	//
	/**
	 * Constructor
	 * @param $plugin DiscoPlugin
	 * @param $contextId integer
	 */
	function __construct($plugin, $contextId) {
		$this->_contextId = $contextId;
		$this->_plugin = $plugin;

		parent::__construct($plugin->getTemplateResource('settingsForm.tpl'));

		// Add form validation checks.
		$this->addCheck(new FormValidatorPost($this));
		$this->addCheck(new FormValidatorCSRF($this));
	}


	//
	// Implement template methods from Form
	//
	/**
	 * @copydoc Form::initData()
	 */
	function initData() {
		$this->_data = array(
			'test' => $this->_plugin->getSetting($this->_contextId, 'test')
		);
	}

	/**
	 * @copydoc Form::readInputData()
	 */
	function readInputData() {
		$this->readUserVars(array('test'));
	}

	/**
	 * @copydoc Form::execute()
	 */
	function execute(...$functionArgs) {
                $this->_plugin->updateSetting($this->_contextId, 'test', trim($this->getData('test'), "\"\';"), 'string');
		parent::execute(...$functionArgs);
	}

	/**
	 * Is the form field optional
	 * @param $settingName string
	 * @return boolean
	 */
	function isOptional($settingName) {
		return in_array($settingName, array());
	}

}


