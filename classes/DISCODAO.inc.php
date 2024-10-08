<?php

/**
 * @file classes/DiscoDAO.inc.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @package plugins.generic.disco
 * @class DiscoDAO
 * Operations for retrieving and modifying Disco objects.
 */

import('lib.pkp.classes.db.DAO');
import('plugins.generic.disco.classes.disco');

class DiscoDAO extends DAO {

    
    
    
    
        /**
	 * Get a list of localized settings.
	 * @return array
	 */
	function getLocaleFieldNames() {
            return array('openAuthorship','peerReview','ownershipScience','noCharges','openLicence','doasScore','functionalWebsite','fullContentAvailable','qualityEnHomepage','uniqueJournalUrl','biographicInformation','editorialBoardPage','scholarlyArticles','publicationEthicsDescription','authorsGuidelinesDescription','peerReviewDescription','references','uniqueUrlPerArticle','titleOnLp','doiOnLp','dataInJats','uniqueUrlGalleys','noApc','noRegistration','oaDescribed');
	}
        
        
	/**
	 * Get a set of disco criteria by context ID
	 * @param $contextId int
	 * @param $rangeInfo Object optional
	 * @return DAOResultFactory
	 */
	function getByContextId($contextId, $rangeInfo = null) {
		$result = $this->retrieveRange(
			'SELECT * FROM disco_plugin WHERE context_id = ?',
			(int) $contextId,
			$rangeInfo
		);

		return new DAOResultFactory($result, $this, '_fromRow');
	}

        /**
	 * Insert a disco object.
	 * @param $disco disco
	 * @return int Inserted static page ID
	 */
	function insertObject($disco) {
		$this->update(
			'INSERT INTO disco_plugin (context_id, type) VALUES (?, ?)',
			array(
				(int) $disco->getContextId(),
				$discot->getType()
			)
		);

		$disco->setId($this->getInsertId());
		$this->updateLocaleFields($disco);

		return $disco->getId();
	}
        
	/**
	 * Update the database with a scopus score object
	 * @param $disco ScopusScore
	 */
	function updateObject($disco) {
		$this->update(
			'UPDATE	disco_plugin
			SET	context_id = ?,
				type = ?
			WHERE	disco_id = ?',
			array(
				(int) $disco->getContextId(),
				$disco->getType(),
				(int) $disco->getId()
			)
		);
	}

	/**
	 * Generate a new scopus score object.
	 * @return ScopusScore
	 */
	function newDataObject() {
		return new ScopusScore();
	}

	/**
	 * Return a new scopus score object from a given row.
	 * @return ScopusScore
	 */
	function _fromRow($row) {
		$scopusScore = $this->newDataObject();
		$scopusScore->setId($row['scopus_score_id']);
                $scopusScore->setUpdateDate($row['update_date']);
		$scopusScore->setCitationCount($row['citation_count']);
                $scopusScore->setScopusLink($row['scopus_link']);
		$scopusScore->setSubmissionId($row['submission_id']);

		return $scopusScore;
	}

	/**
	 * Get the insert ID for the last inserted static page.
	 * @return int
	 */
	function getInsertId() {
		return $this->_getInsertId('scopus_score', 'scopus_score_id');
	}
        
	/**
	 * Delete a static page by ID.
	 * @param $staticPageId int
	 */
	function deleteById($staticPageId) {
		$this->update(
			'DELETE FROM static_pages WHERE static_page_id = ?',
			(int) $staticPageId
		);
		$this->update(
			'DELETE FROM static_page_settings WHERE static_page_id = ?',
			(int) $staticPageId
		);
	}

	/**
	 * Delete a static page object.
	 * @param $staticPage StaticPage
	 */
	function deleteObject($staticPage) {
		$this->deleteById($staticPage->getId());
	}

	/**
	 * Generate a new static page object.
	 * @return StaticPage
	 */
	function newDataObject() {
		return new Disco();
	}

	/**
	 * Return a new static pages object from a given row.
	 * @return StaticPage
	 */
	function _fromRow($row) {
		$staticPage = $this->newDataObject();
		$staticPage->setId($row['static_page_id']);
		$staticPage->setPath($row['path']);
		$staticPage->setContextId($row['context_id']);

		$this->getDataObjectSettings('static_page_settings', 'static_page_id', $row['static_page_id'], $staticPage);
		return $staticPage;
	}

	/**
	 * Update the localized data for this object
	 * @param $author object
	 */
	function updateLocaleFields(&$staticPage) {
		$this->updateDataObjectSettings('static_page_settings', $staticPage, array(
			'static_page_id' => $staticPage->getId()
		));
	}
}

