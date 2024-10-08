{**
* templates/vdiscoTab.tpl
*
* Copyright (c) 2014-2020 Simon Fraser University
* Copyright (c) 2003-2020 John Willinsky
* Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
*
* Discoverability companion plugin -- displays the Discoverability companion list.
*}
<script>
    document.addEventListener('DOMContentLoaded', function () {ldelim}
            const toggleButtons = document.querySelectorAll('.toggle-btn');

            toggleButtons.forEach(button => {ldelim}
                        button.addEventListener('click', function () {ldelim}
                                        const target = document.getElementById(this.dataset.target);
                                        const arrow = this.querySelector('.arrow');
                                        const text = this.querySelector('.toggle-text');

                                        if (target.style.display === 'none') {ldelim}
                                                            target.style.display = 'block';
                                                            target.style.fontsize = '5px';
                                                            arrow.innerHTML = '&#9660;';  // Šipka dolů
                                                            text.textContent = 'Less';
                                                            this.classList.add('active');
    {rdelim} else {ldelim}
                        target.style.display = 'none';
                        arrow.innerHTML = '&#9654;';  // Šipka doprava
                        text.textContent = 'More information';
                        this.classList.remove('active');
    {rdelim}
    {rdelim});
    {rdelim});
    {rdelim});
</script>
<tab id="disco" label="{translate key="plugins.generic.disco.disco"}">
    <div id="disco_description" style="margin-bottom: 25px; border-bottom: 1px solid #ddd; text-align: justify;">
        {translate key="plugins.generic.disco.description.long"}
    </div>
    <tabs :is-side-tabs="true">
        <tab id="disco_diamond" label="{translate key="plugins.generic.disco.diamond"}">
            {include file="{$discoDiamond}"}
        </tab>
        <tab id="disco_appearance" label="{translate key="plugins.generic.disco.appearance"}">
            {include file="{$discoAppearance}"}
        </tab>
        <tab id="disco_information" label="{translate key="plugins.generic.disco.information"}">
            {include file="{$discoInformation}"}
        </tab>
        <tab id="disco_landing_pages" label="{translate key="plugins.generic.disco.landingPages"}">
             {include file="{$discoLandingPages}"}
        </tab>
        <tab id="disco_metadata" label="{translate key="plugins.generic.disco.metadataRecommendation"}">
             {include file="{$discoMetadata}"}
        </tab>
        <tab id="disco_metadataQuality" label="{translate key="plugins.generic.disco.metadataQuality"}">
            {include file="{$discoMetadataQuality}"}
        </tab>
        <tab id="disco_policy" label="{translate key="plugins.generic.disco.policy"}">
             {include file="{$discoPolicy}"}
        </tab>
        <tab id="disco_regularity" label="{translate key="plugins.generic.disco.regularity"}">
             {include file="{$discoRegularity}"}
        </tab>
        <tab id="disco_generalRecommendation" label="{translate key="plugins.generic.disco.generalRecommendations"}">
             {include file="{$discoGeneralRecommendation}"}
        </tab>
        <tab id="disco_impactRecommendation" label="{translate key="plugins.generic.disco.impactRecommendations"}">
             {include file="{$discoImpactRecommendation}"}
        </tab>
        <tab id="disco_seo" label="{translate key="plugins.generic.disco.seo"}">
              {include file="{$discoSeo}"}
        </tab>
        <tab id="disco_results" label="{translate key="plugins.generic.disco.results"}">
             {include file="{$discoResults}"}
        </tab>
    </tabs>
</tab>
