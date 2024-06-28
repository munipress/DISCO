{**
 * plugins/generic/disco/templates/settingsForm.tpl
 *
 * Copyright (c) 2014-2024 Simon Fraser University
 * Copyright (c) 2003-2024 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * DISCO plugin settings
 *
 *}
<script>
	$(function() {ldelim}
		// Attach the form handler.
		$('#discoSettingsForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	{rdelim});
</script>

<form class="pkp_form" id="discoSettingsForm" method="post" action="{url router=$smarty.const.ROUTE_COMPONENT op="manage" category="generic" plugin=$pluginName verb="settings" save=true}">
	{csrf}
	{include file="controllers/notification/inPlaceNotification.tpl" notificationId="discoSettingsFormNotification"}

	<div id="description">{translate key="plugins.generic.disco.manager.settings.test"}</div>

	{fbvFormArea id="discoSettingsFormArea"}
            {fbvElement type="text" id="test" value=$test label="plugins.generic.disco.manager.settings.test"}
                
	{/fbvFormArea}

	{fbvFormButtons}

	<p><span class="formRequired">{translate key="common.requiredField"}</span></p>
</form>

