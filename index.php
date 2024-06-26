<?php

/**
 * @defgroup plugins_generic_disco DISCOverability companion Plugin
 */

/**
 * @file plugins/generic/DISCO/index.php
 *
 * Copyright (c) 2014-2024 Simon Fraser University
 * Copyright (c) 2003-2024 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_generic_disco
 * @brief Check journal visibility against criteria of aggregators, indexing databases, search engines 
 *
 */

require_once('DISCOPlugin.inc.php');

return new DISCOPlugin();


