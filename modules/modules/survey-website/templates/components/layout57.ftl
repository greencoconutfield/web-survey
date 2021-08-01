[#assign showFull = false /]
[#if content.showFull?has_content]
   [#assign showFull = content.showFull /]
[/#if]
[#if !showFull]
  <h1 style="text-align: left;color: #216478;">${content.heading!"NO HEADING"}</h1>
  <div class="row">
      <div class="col-sm-5">
        [@cms.area name="layout57-1" /] 

      </div>
      <div class="col-sm-7">
        [@cms.area name="layout57-2" /] 
      </div>
  </div>
[#else]
  <div class="row" style="text-align: center">
      <div class="col-sm-12">
        ${cmsfn.decode(content).desc!}
      </div>
  </div>
[/#if]