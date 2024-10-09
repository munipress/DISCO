{**
* templates/discoAppearance.tpl
*
* Copyright (c) 2014-2020 Simon Fraser University
* Copyright (c) 2003-2020 John Willinsky
* Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
*
* TODO text.
*}


<h3>{translate key="plugins.generic.disco.appearance"}</h3>
<p>{translate key="plugins.generic.disco.appearance.description"}</p>
{capture assign=actionUrl}{url router=$smarty.const.ROUTE_COMPONENT component="plugins.generic.disco.controllers.form.DiscoFormHandler" op="updateAppearanceCriteria" contextId=$contextId escape=false}       {/capture}
<form class="pkp_form" id="discoAppearanceForm" method="post" action="{$actionUrl}">
    {csrf}
    {fbvFormArea id="appearanceFormArea1" class="border"}

            {if $fullContentAvailable}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="fullContentAvailable" id="fullContentAvailable" checked=$checked label="plugins.generic.disco.appearance.fullContentAvailable"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance1">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance1" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.fullContentAvailable.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.fullContentAvailable.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="appearanceFormArea2" class="border"}

            {if $functionalWebsite}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="functionalWebsite" id="functionalWebsite" checked=$checked label="plugins.generic.disco.appearance.functionalWebsite"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance2">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance2" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.functionalWebsite.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.functionalWebsite.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="appearanceFormArea3" class="border"}

            {if $journalUrl}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="journalUrl" id="journalUrl" checked=$checked label="plugins.generic.disco.appearance.journalUrl"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance3">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance3" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.journalUrl.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.journalUrl.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="appearanceFormArea4" class="border"}

            {if $eIssn}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="eIssn" id="eIssn" checked=$checked label="plugins.generic.disco.appearance.ojsCheck.eIssn" disabled=true}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance4">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance4" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.ojsCheck.eIssn.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.ojsCheck.eIssn.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="appearanceFormArea5" class="border"}

            {if $fullContentAvailable}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="fullContentAvailable" id="fullContentAvailable" checked=$checked label="plugins.generic.disco.appearance.ojsCheck.fullContentAvailable" disabled=true}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance5">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance5" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.ojsCheck.fullContentAvailable.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.ojsCheck.fullContentAvailable.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="appearanceFormArea6" class="border"}

            {*{if $journalTitle}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}*}
            {assign var="checked" value=true}
            {fbvElement type="checkbox" name="journalTitle" id="journalTitle" checked=$checked label="plugins.generic.disco.appearance.ojsCheck.journalTitle" disabled=true}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance6">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance6" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.ojsCheck.journalTitle.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.ojsCheck.journalTitle.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="appearanceFormArea7" class="border"}

            {if $qualityEnHomepage}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="qualityEnHomepage" id="qualityEnHomepage" checked=$checked label="plugins.generic.disco.appearance.qualityEnHomepage"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="infoAppearance7">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="infoAppearance7" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.appearance.qualityEnHomepage.description"}
                    <p><strong>Services:</strong> {translate key="plugins.generic.disco.appearance.qualityEnHomepage.services"}</p>
                </div>
            </div>
      {/fbvFormArea}
    {fbvFormSection class="formButtons"}
            {assign var=buttonId value="submitFormButton"|concat:"-"|uniqid}
            {fbvElement type="submit" class="submitFormButton" id=$buttonId label="common.save"}
    {/fbvFormSection}
</form>
