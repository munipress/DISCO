{**
* templates/discoMetadata.tpl
*
* Copyright (c) 2014-2020 Simon Fraser University
* Copyright (c) 2003-2020 John Willinsky
* Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
*
* TODO text.
*}
<form class="pkp_form" id="discoAppearanceForm">
    <h3>{translate key="plugins.generic.disco.metadataRecommendation"}</h3>
    <p>{translate key="plugins.generic.disco.metadataRecommendation.description"}</p>
    {fbvFormSection class="formButtons"}
            {assign var=buttonId value="submitFormButton"|concat:"-"|uniqid}
            {fbvElement type="submit" class="submitFormButton" id=$buttonId label="common.save"}
    {/fbvFormSection}
</form>
