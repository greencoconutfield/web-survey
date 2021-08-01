<div class="row">
  <div class="col-xs-12">
  [#if content.image?has_content]
    [#assign image = damfn.getAsset(content.image)]
    [#assign imageLink = image.link]
    <img style="min-height: 780px;"
      src='${imageLink!}'
      class='container'
      alt='${content.caption!"image"}'>
  [/#if]
  </div>
  </div>
