{**
 * plugins/generic/DISCO/templates/settingsForm.tpl
 *
 * Copyright (c) 2014-2024 Simon Fraser University
 * Copyright (c) 2003-2024 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * DISCO plugin settings
 *
 *}
<script type="text/javascript">
	$(function() {ldelim}
		// Attach the form handler.
		$('#discoSettingsForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	{rdelim});
</script>
<form class="pkp_form" id="discoSettingsForm" method="post" action="{url router=$smarty.const.ROUTE_COMPONENT op="manage" plugin="DISCOPlugin" category="generic" verb="save"}">
	{csrf}
	{fbvFormArea id="discoSettingsFormArea"}
		{*TODO*}
	{/fbvFormArea}
	{fbvFormButtons submitText="common.save"}
	<p><span class="formRequired">{translate key="common.requiredField"}</span></p>
</form>
