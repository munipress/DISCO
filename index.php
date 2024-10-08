<?php

/**
 * @defgroup plugins_generic_disco Discoverability companion Plugin
 */

/**
 * @file plugins/generic/disco/index.php
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_generic_disco
 * @brief Check journal visibility against criteria of aggregators, indexing databases, search engines 
 *
 */

require_once('DiscoPlugin.inc.php');

return new DiscoPlugin();


