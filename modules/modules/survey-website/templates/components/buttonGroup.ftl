[#if content.nextPage?has_content]
  [#assign nextPage = cmsfn.contentById(content.nextPage)!]
[/#if]
[#if content.previousPage?has_content]
  [#assign previousPage = cmsfn.contentById(content.previousPage)!]
[/#if]
[#assign sendSubmit = true /]
[#if content.sendSubmit?has_content]
   [#assign sendSubmit = content.sendSubmit /]
[/#if]

<div class="row">
  <div class="col-sm-9">

  </div>
  <div class="col-sm-3">

  [#if previousPage?has_content]
    <a href="${cmsfn.link(previousPage)}" class="btn btn-info" role="button" style="
                              position: absolute;
                              right: 250px;
                              top: 5px;
                              width: 200px;
                              font-size: 18px;
                              padding: 10px 20px;
                               border-color: #216478;
                               background-color: grey !important;">BACK</a>
  [/#if]
  [#if nextPage?has_content]
    [#if !sendSubmit] 
    <a class="btn btn-success" href="${cmsfn.link(nextPage)}" style="
                              background-color: #216478 ! important;
                              border-color: #216478;
                              position: absolute;
                              padding: 10px 20px;
                              right: 10px;
                              top: 5px;
                              font-size: 18px;
                              width: 200px;">NEXT</a>
    
    [#else]
      <a class="btn btn-success" href="${cmsfn.link(nextPage)}" style="
        position: absolute;
        right: 10px;
        top: 5px;">SUBMIT & NEXT ></a>
    [/#if]
  [/#if]
  </div>
</div>

               