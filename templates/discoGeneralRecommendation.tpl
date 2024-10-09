{**
* templates/discoGeneralRecommendation.tpl
*
* Copyright (c) 2014-2020 Simon Fraser University
* Copyright (c) 2003-2020 John Willinsky
* Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
*
* TODO text.
*}
<form class="pkp_form" id="discoAppearanceForm">
    <h3>{translate key="plugins.generic.disco.generalRecommendations"}</h3>
    <p>{translate key="plugins.generic.disco.generalRecommendations.description"}</p>
    {fbvFormArea id="appearanceFormArea" class="border"}

            {if $fullContentAvailable}
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
    {fbvFormSection class="formButtons"}
            {assign var=buttonId value="submitFormButton"|concat:"-"|uniqid}
            {fbvElement type="submit" class="submitFormButton" id=$buttonId label="common.save"}
    {/fbvFormSection}
</form>
