[#if content.video?has_content]
    [#assign videoLink = damfn.getAssetLink(content.video)]
    <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="${videoLink}" allowfullscreen autoplay=true></iframe>
    </div>
[/#if]
[#if content.hide?has_content && content.hide]
  <div class="row" style="padding-top: 20px;">
      [@cms.area name="layout57-5" /] 
  </div>
 [#else] 
  <div class="row" style="padding-top: 20px;">
      <div class="col-sm-6">
        [@cms.area name="layout57-3" /] 

      </div>
      <div class="col-sm-6">
        [@cms.area name="layout57-4" /] 
      </div>
  </div>
[/#if]