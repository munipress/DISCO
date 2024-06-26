<?php

/**
 * @file classes/DISCO.inc.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @package plugins.generic.disco
 * @class DISCO
 * Data object representing a DISCO object
 */

class DISCO extends DataObject {

	//
	// Get/set methods
	//

	/**
	 * Get context ID
	 * @return string
	 */
	function getContextId(){
		return $this->getData('contextId');
	}

	/**
	 * Set context ID
	 * @param $contextId int
	 */
	function setContextId($contextId) {
		return $this->setData('contextId', $contextId);
	}

/***************************************************
 * TODO
 * ***********************************************/
}

