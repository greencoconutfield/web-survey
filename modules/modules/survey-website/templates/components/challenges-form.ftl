[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentChallenges = cmsfn.contentByPath("/"+currentUser +"/challeges" , "ksa")! /]
[/#if]
<form id="form0" method="post" action="" enctype="multipart/form-data">
    <div class="form-item-hidden">
        <input type="hidden" name="mgnlModelExecutionUUID" value="${content.@id}" />
        <input type="hidden" name="field" value="" />
        [#if model.formState?has_content]
        <input type="hidden" name="mgnlFormToken" value="${model.formState.token!}" />
        [/#if]
        <input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />
    </div>
   <div class="row" style="background: #216478;margin-left: 15px;margin-right: 1px;text-align: center;display: grid;">
      <span>
         <p class="text-center">Your Focus Challenge</p>
      </span>
   </div>
   <div class="row" style="min-width: 630px;margin-left: 15px;margin-top: 10px;">
      <textarea name="challenges" class="form-control" id="exampleFormControlTextarea1" rows="5" style="margin-top: 0px;margin-bottom: 0px;height: 234px;">
        [#if currentChallenges?has_content && currentChallenges.challenges?has_content] ${currentChallenges.challenges} [/#if]</textarea>
      </textarea>
   </div>
   <script type="text/javascript">
      function mgnlFormReset(el) {
          var myForm = el.form;
          myForm.reset();
          var firstElem = null;
          var elements = myForm.elements;
          for (var i = 0; i < elements.length; i++) {
              var elem = elements[i];
              var fieldType = elements[i].type.toLowerCase();
              switch (fieldType) {
                  case "text":
                  case "password":
                  case "textarea":
                      elements[i].value = "";
                      firstElem = firstElem == null ? elements[i] : firstElem;
                      break;
                  case "radio":
                  case "checkbox":
                      if (elements[i].checked) {
                          elements[i].checked = false;
                      }
                      break;
                  case "select-one":
                  case "select-multi":
                      elements[i].selectedIndex = -1;
                      break;
                  default:
                      break;
              }
              removeClass(elem, "user-error");
              removeClass(elem, "form-ui-invalid");
              if (elem.parentNode.nodeName.toLowerCase() == 'div') {
                  removeClass(elem.parentNode, "error");
              }
          }
          // remove the "formErrors"-div
          var errorBox = document.getElementById("formErrorsDisplay");
          if(errorBox != null) {
            errorBox.parentNode.removeChild(errorBox);
          }
          el.focus();
          return false;
      }
      function removeClass(e, c) {
          e.className = e.className.replace(new RegExp('(?:^|\\s)' + c + '(?!\\S)'), '');
      }
   </script>
   <script type="text/javascript">
      function mgnlFormHandleBackButton(el) {
        var back = document.createElement('input')
        back.setAttribute('type','hidden')
        back.setAttribute('name', 'mgnlFormBackButtonPressed')
        //get the enclosing form. This is widely supported, even by IE4!
        el.form.appendChild(back)
        //and disable html5 form validation
        el.form.setAttribute('novalidate', 'novalidate')
        el.form.submit()
      }
   </script>
   <div class="row" style="
      margin-top: 20px;
      ">
      <div class="col-sm-6">
      </div>
      <div class="col-sm-3">
         <a href="${cmsfn.link(previousPage)!}" class="btn " role="button" style="
            position: absolute;
            right: 50px;
            /* top: 5px; */
            width: 200px;
             background-color: grey !important; color: white;;
            font-size: 18px;
            padding: 10px 20px;
            ">Back</a>
      </div>
      <div class="col-sm-3">
         <input class="btn" type="submit" value="next" style="
            background-color: #216478 ! important;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 17px;
            font-family: Raleway;
            cursor: pointer;
            width: 200px;
            position: absolute;
            right: 0px;
            ">                  
      </div>
   </div>
</form>
[#macro generateOptions ]
    [#if currentMatrix.inkn1?has_content] <option value="${currentMatrix.inkn1}">${currentMatrix.inkn1}</option> [/#if]
    [#if currentMatrix.inkn2?has_content] <option value="${currentMatrix.inkn2}">${currentMatrix.inkn2}</option> [/#if]
    [#if currentMatrix.inkn3?has_content] <option value="${currentMatrix.inkn3}">${currentMatrix.inkn3}</option> [/#if]
    [#if currentMatrix.insk1?has_content] <option value="${currentMatrix.insk1}">${currentMatrix.insk1}</option> [/#if]
    [#if currentMatrix.insk2?has_content] <option value="${currentMatrix.insk2}">${currentMatrix.insk2}</option> [/#if]
    [#if currentMatrix.insk3?has_content] <option value="${currentMatrix.insk3}">${currentMatrix.insk3}</option> [/#if]
    [#if currentMatrix.inat1?has_content] <option value="${currentMatrix.inat1}">${currentMatrix.inat1}</option> [/#if]
    [#if currentMatrix.inat2?has_content] <option value="${currentMatrix.inat2}">${currentMatrix.inat2}</option> [/#if]
    [#if currentMatrix.inat3?has_content] <option value="${currentMatrix.inat3}">${currentMatrix.inat3}</option> [/#if]
    [#if currentMatrix.orkn1?has_content] <option value="${currentMatrix.orkn1}">${currentMatrix.orkn1}</option> [/#if]
    [#if currentMatrix.orkn2?has_content] <option value="${currentMatrix.orkn2}">${currentMatrix.orkn2}</option> [/#if]
    [#if currentMatrix.orkn3?has_content] <option value="${currentMatrix.orkn3}">${currentMatrix.orkn3}</option> [/#if]
    [#if currentMatrix.orsk1?has_content] <option value="${currentMatrix.orsk1}">${currentMatrix.orsk1}</option> [/#if]
    [#if currentMatrix.orsk2?has_content] <option value="${currentMatrix.orsk2}">${currentMatrix.orsk2}</option> [/#if]
    [#if currentMatrix.orsk3?has_content] <option value="${currentMatrix.orsk3}">${currentMatrix.orsk3}</option> [/#if]
    [#if currentMatrix.orat1?has_content] <option value="${currentMatrix.orat1}">${currentMatrix.orat1}</option> [/#if]
    [#if currentMatrix.orat2?has_content] <option value="${currentMatrix.orat2}">${currentMatrix.orat2}</option> [/#if]
    [#if currentMatrix.orat3?has_content] <option value="${currentMatrix.orat3}">${currentMatrix.orat3}</option> [/#if]
    [#if currentMatrix.rokn1?has_content] <option value="${currentMatrix.rokn1}">${currentMatrix.rokn1}</option> [/#if]
    [#if currentMatrix.rokn2?has_content] <option value="${currentMatrix.rokn2}">${currentMatrix.rokn2}</option> [/#if]
    [#if currentMatrix.rokn3?has_content] <option value="${currentMatrix.rokn3}">${currentMatrix.rokn3}</option> [/#if]
    [#if currentMatrix.rosk1?has_content] <option value="${currentMatrix.rosk1}">${currentMatrix.rosk1}</option> [/#if]
    [#if currentMatrix.rosk2?has_content] <option value="${currentMatrix.rosk2}">${currentMatrix.rosk2}</option> [/#if]
    [#if currentMatrix.rosk3?has_content] <option value="${currentMatrix.rosk3}">${currentMatrix.rosk3}</option> [/#if]
    [#if currentMatrix.roat1?has_content] <option value="${currentMatrix.roat1}">${currentMatrix.roat1}</option> [/#if]
    [#if currentMatrix.roat2?has_content] <option value="${currentMatrix.roat2}">${currentMatrix.roat2}</option> [/#if]
    [#if currentMatrix.roat3?has_content] <option value="${currentMatrix.roat3}">${currentMatrix.roat3}</option> [/#if]
[/#macro ]