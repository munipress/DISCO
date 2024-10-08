<?php

/**
 * @file classes/disco.inc.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @package plugins.generic.disco
 * @class Disco
 * Data object representing a disco object.
 */

class Disco extends DataObject {

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

        /**
	 * Get type
	 * @return string
	 */
	function getType(){
		return $this->getData('type');
	}

	/**
	 * Set context ID
	 * @param $contextId int
	 */
	function setType($type) {
		return $this->setData('type', $type);
	}
        
        /**
        * Set the 
        * @param $editorialBoardPage string
        */
       function setBiographicInformation($biographicInformation, $locale = null) {
           $this->setData('biographicInformation', $biographicInformation, $locale);
       }

       /**
        * get the 
        */
       function getBiographicInformation($locale = null) {
           return $this->getData('biographicInformation', $locale);
       }

       /**
        * Set the 
        * @param $scholarlyArticles string
        */
       function setEditorialBoardPage($editorialBoardPage, $locale = null) {
           $this->setData('editorialBoardPage', $editorialBoardPage, $locale);
       }

       /**
        * get the 
        */
       function getEditorialBoardPage($locale = null) {
           return $this->getData('editorialBoardPage', $locale);
       }

       /**
        * Set the 
        * @param $publicationEthicsDescription string
        */
       function setScholarlyArticles($scholarlyArticles, $locale = null) {
           $this->setData('scholarlyArticles', $scholarlyArticles, $locale);
       }

       /**
        * get the 
        */
       function getScholarlyArticles($locale = null) {
           return $this->getData('scholarlyArticles', $locale);
       }

       /**
        * Set the 
        * @param $authorsGuidelinesDescription string
        */
       function setPublicationEthicsDescription($publicationEthicsDescription, $locale = null) {
           $this->setData('publicationEthicsDescription', $publicationEthicsDescription, $locale);
       }

       /**
        * get the 
        */
       function getPublicationEthicsDescription($locale = null) {
           return $this->getData('publicationEthicsDescription', $locale);
       }

       /**
        * Set the 
        * @param $peerReviewDescription string
        */
       function setAuthorsGuidelinesDescription($authorsGuidelinesDescription, $locale = null) {
           $this->setData('authorsGuidelinesDescription', $authorsGuidelinesDescription, $locale);
       }

       /**
        * get the 
        */
       function getAuthorsGuidelinesDescription($locale = null) {
           return $this->getData('authorsGuidelinesDescription', $locale);
       }

       /**
        * Set the 
        * @param $references string
        */
       function setPeerReviewDescription($peerReviewDescription, $locale = null) {
           $this->setData('peerReviewDescription', $peerReviewDescription, $locale);
       }

       /**
        * get the 
        */
       function getPeerReviewDescription($locale = null) {
           return $this->getData('peerReviewDescription', $locale);
       }

       /**
        * Set the 
        * @param $uniqueUrlPerArticle string
        */
       function setReferences($references, $locale = null) {
           $this->setData('references', $references, $locale);
       }

       /**
        * get the 
        */
       function getReferences($locale = null) {
           return $this->getData('references', $locale);
       }

       /**
        * Set the 
        * @param $titleOnLp string
        */
       function setUniqueUrlPerArticle($uniqueUrlPerArticle, $locale = null) {
           $this->setData('uniqueUrlPerArticle', $uniqueUrlPerArticle, $locale);
       }

       /**
        * get the 
        */
       function getUniqueUrlPerArticle($locale = null) {
           return $this->getData('uniqueUrlPerArticle', $locale);
       }

       /**
        * Set the 
        * @param $doiOnLp string
        */
       function setTitleOnLp($titleOnLp, $locale = null) {
           $this->setData('titleOnLp', $titleOnLp, $locale);
       }

       /**
        * get the 
        */
       function getTitleOnLp($locale = null) {
           return $this->getData('titleOnLp', $locale);
       }

       /**
        * Set the 
        * @param $dataInJats string
        */
       function setDoiOnLp($doiOnLp, $locale = null) {
           $this->setData('doiOnLp', $doiOnLp, $locale);
       }

       /**
        * get the 
        */
       function getDoiOnLp($locale = null) {
           return $this->getData('doiOnLp', $locale);
       }

       /**
        * Set the 
        * @param $uniqueUrlGalleys string
        */
       function setDataInJats($dataInJats, $locale = null) {
           $this->setData('dataInJats', $dataInJats, $locale);
       }

       /**
        * get the 
        */
       function getDataInJats($locale = null) {
           return $this->getData('dataInJats', $locale);
       }

       /**
        * Set the 
        * @param $noApc string
        */
       function setUniqueUrlGalleys($uniqueUrlGalleys, $locale = null) {
           $this->setData('uniqueUrlGalleys', $uniqueUrlGalleys, $locale);
       }

       /**
        * get the 
        */
       function getUniqueUrlGalleys($locale = null) {
           return $this->getData('uniqueUrlGalleys', $locale);
       }

       /**
        * Set the 
        * @param $noRegistration string
        */
       function setNoApc($noApc, $locale = null) {
           $this->setData('noApc', $noApc, $locale);
       }

       /**
        * get the 
        */
       function getNoApc($locale = null) {
           return $this->getData('noApc', $locale);
       }

       /**
        * Set the 
        * @param $oaDescribed string
        */
       function setNoRegistration($noRegistration, $locale = null) {
           $this->setData('noRegistration', $noRegistration, $locale);
       }

       /**
        * get the 
        */
       function getNoRegistration($locale = null) {
           return $this->getData('noRegistration', $locale);
       }

       /**
        * Set the 
        * @param $ string
        */
       function setOaDescribed($oaDescribed, $locale = null) {
           $this->setData('oaDescribed', $oaDescribed, $locale);
       }

       /**
        * get the 
        */
       function getOaDescribed($locale = null) {
           return $this->getData('oaDescribed', $locale);
       }

}

