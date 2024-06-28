{**
* templates/discoTab.tpl
*
* Copyright (c) 2014-2024 Simon Fraser University
* Copyright (c) 2003-2024 John Willinsky
* Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
*
* Discoverability companion plugin -- displays the Discoverability companion list.
*}
<tab id="disco" label="{translate key="plugins.generic.disco.disco"}">
    <div id="VC_description" style="margin-bottom: 25px; border-bottom: 1px solid #ddd; text-align: justify;">
        {translate key="plugins.generic.disco.description.long"}
    </div>
    <tabs :is-side-tabs="true">
        <tab id="VC_appearance" label="{translate key="plugins.generic.disco.diamond"}">
            
        </tab>
        <tab id="VC_appearance" label="{translate key="plugins.generic.disco.appearance"}">
            
        </tab>
        <tab id="VC_information" label="{translate key="plugins.generic.disco.information"}">
            
        </tab>
        <tab id="VC_landing_pages" label="{translate key="plugins.generic.disco.landingPages"}">
            
        </tab>
        <tab id="VC_metadata" label="{translate key="plugins.generic.disco.metadataRecommendation"}">

        </tab>
        <tab id="VC_metadata" label="{translate key="plugins.generic.disco.metadataQuality"}">

        </tab>
        <tab id="VC_seo" label="{translate key="plugins.generic.disco.policy"}">

        </tab>
        <tab id="VC_seo" label="{translate key="plugins.generic.disco.regularity"}">

        </tab>
        <tab id="VC_seo" label="{translate key="plugins.generic.disco.generalRecommendations"}">

        </tab>
        <tab id="VC_seo" label="{translate key="plugins.generic.disco.impactRecommendations"}">

        </tab>
        <tab id="VC_seo" label="{translate key="plugins.generic.disco.seo"}">

        </tab>
        <tab id="VC_results" label="{translate key="plugins.generic.disco.results"}">

        </tab>
    </tabs>
</tab>
