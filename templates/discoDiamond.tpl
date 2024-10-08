{**
* templates/discoDiamond.tpl
*
* Copyright (c) 2014-2020 Simon Fraser University
* Copyright (c) 2003-2020 John Willinsky
* Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
*
* TODO text.
*}

    
<h3>{translate key="plugins.generic.disco.diamond"}</h3>
    <p>{translate key="plugins.generic.disco.diamond.description"}</p>
{capture assign=actionUrl}{url router=$smarty.const.ROUTE_COMPONENT component="plugins.generic.disco.controllers.form.DiscoFormHandler" op="updateDiamondCriteria" contextId=$contextId escape=false}       {/capture}
<form class="pkp_form" id="discoDiamondForm" method="post" action="{$actionUrl}">
    {csrf}
    {fbvFormArea id="diamondFormArea" class="border"}

            {if $persistantIdentification}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="persistantIdentification" id="persistantIdentification" checked=$checked label="plugins.generic.disco.diamond.persistantIdentification"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="info1">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="info1" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.diamond.persistantIdentification.description"}
                </div>
            </div>
      {/fbvFormArea}
      {fbvFormArea id="diamondFormArea2" class="border"}
            {if $scholarlyJournal}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="scholarlyJournal" id="scholarlyJournal" checked=$checked label="plugins.generic.disco.diamond.scholarlyJournal"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="info2">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="info2" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.diamond.scholarlyJournal.description"}
                </div>
            </div>

    {/fbvFormArea}
    {fbvFormArea id="diamondFormArea3" class="border"}
            {if $openLicence}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="openLicence" id="openLicence" checked=$checked label="plugins.generic.disco.diamond.openLicence"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="info3">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="info3" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.diamond.openLicence.description"}
                </div>
            </div>

    {/fbvFormArea}
    {fbvFormArea id="diamondFormArea4" class="border"}
            {if $noCharges}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="noCharges" id="noCharges" checked=$checked label="plugins.generic.disco.diamond.noCharges"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="info4">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="info4" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.diamond.noCharges.description"}
                </div>
            </div>

    {/fbvFormArea}
    {fbvFormArea id="diamondFormArea5" class="border"}
            {if $openAuthorship}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="openAuthorship" id="openAuthorship" checked=$checked label="plugins.generic.disco.diamond.openAuthorship"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="info5">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="info5" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.diamond.openAuthorship.description"}
                </div>
            </div>

    {/fbvFormArea}
    {fbvFormArea id="diamondFormArea6" class="border"}
            {if $ownershipScience}
                {assign var="checked" value=true}
            {else}
                {assign var="checked" value=false}
            {/if}
            {fbvElement type="checkbox" name="ownershipScience" id="ownershipScience" checked=$checked label="plugins.generic.disco.diamond.ownershipScience"}
            <div class="info-block">
                <a href="javascript:void(0);" class="toggle-btn" data-target="info6">
                    <span class="arrow">&#9654;</span> <!-- Šipka doprava -->
                    <span class="toggle-text">More information</span>
                </a>
                <div id="info6" class="info-content" style="display: none;">
                    {translate key="plugins.generic.disco.diamond.ownershipScience.description"}
                </div>
            </div>

    {/fbvFormArea}
    {*                {/fbvFormSection}*}
        {*{fbvElement type="text" id="doasScore" value=$doasScore label="plugins.generic.disco.diamond.doasScore" size=$fbvStyles.size.MEDIUM}     
    *}
    {fbvFormSection class="formButtons"}
    {assign var=buttonId value="submitFormButton"|concat:"-"|uniqid}
    {fbvElement type="submit" class="submitFormButton" id=$buttonId label="common.save"}
    {/fbvFormSection}
</form>

