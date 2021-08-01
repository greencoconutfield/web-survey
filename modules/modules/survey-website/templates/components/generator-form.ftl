[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentMatrix = cmsfn.contentByPath("/"+currentUser +"/matrix" , "ksa")! /]
  [#assign currentQ3 = cmsfn.contentByPath("/"+currentUser +"/q3" , "ksa")! /]
  [#assign currentQ78 = cmsfn.contentByPath("/"+currentUser +"/q7" , "ksa")! /]
  [#assign currentGenerate = cmsfn.contentByPath("/"+currentUser +"/generate" , "ksa")! /]
[/#if]

<form id="${content.title?default("form0")}" onsubmit="return validateForm()" method="post" action="" enctype="${def.parameters.formEnctype?default("multipart/form-data")}" >
      <div class="form-item-hidden">
        <input type="hidden" name="mgnlModelExecutionUUID" value="${content.@id}" />
        <input type="hidden" name="field" value="" />
        [#if model.formState?has_content]
        <input type="hidden" name="mgnlFormToken" value="${model.formState.token!}" />
        [/#if]
        <input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />
      </div>
        <div class="tab">
          <span style="font-size: 40px; color: #216478;margin-left: 80px;"> Your Value Statements Generator
         </span>
          <div class="row">
           <span style="font-size: 20px; margin-left: 100px;    margin-right: 50px; text-align: justify"> Here is a simple tool to help you build your most relevant KSA items in easy-to-remember sentences that we call Value Statements. No matter what professional situation you  nd yourself in Your Value Statements are your core value propositions as a professional. You can use these statements to easily create elevator pitches, create impact in your CV, nail important conversations like job interviews, or to win business with prospective clients.</span>
          </div>
          <br>
      <table class="table">
        <tbody>
            <tr>
              <th></th>
              <td>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style="
                          font-size: 40px;
                          ">1</p>
                    </span>
                  </div>
              </td>
              <td>
                  <div class="row">
                    <div class="col-sm-2">
                        My knowledge of
                    </div>
                    <div class="col-sm-4">
                        <select name="gea1" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                           [#if currentGenerate?has_content && currentGenerate.gea1?has_content]
                            [@generateKnowledgeOptions  currentGenerate.gea1 /]
                          [#else]
                            [@generateKnowledgeOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                   <div class="col-sm-2">
                        AND/OR my strong skill with
                    </div>
                    <div class="col-sm-4">
                        <select name="gea2" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                          [#if currentGenerate?has_content && currentGenerate.gea2?has_content]
                            [@generateSkillOptions  currentGenerate.gea2 /]
                          [#else]
                            [@generateSkillOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-2">
                        combined with my
                    </div>
                    <div class="col-sm-4">
                        <select name="gea3" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                         [#if currentGenerate?has_content && currentGenerate.gea3?has_content]
                            [@generateAttributeOptions  currentGenerate.gea3 /]
                          [#else]
                            [@generateAttributeOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-2">
                        means I consistently achieve
                    </div>
                  </div>
                   <div class="row">
                    <div class="col-sm-9">
                       <select name="gea4" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                          [#if currentGenerate?has_content && currentGenerate.gea4?has_content]
                            [@generateQ3Options  currentGenerate.gea4 /]
                          [#else]
                            [@generateQ3Options  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-3">
                        for my employers/clients.
                    </div>
                 
              </td>
            </tr>
            <tr>
              <th></th>
              <td>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style="
                          font-size: 40px;
                          ">2</p>
                    </span>
                  </div>
              </td>
              <td>
                  <div class="row">
                    <div class="col-sm-2">
                        My knowledge of
                        
                    </div>
                    <div class="col-sm-4">
                        <select name="gea5" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                           [#if currentGenerate?has_content && currentGenerate.gea1?has_content]
                            [@generateKnowledgeOptions  currentGenerate.gea5 /]
                          [#else]
                            [@generateKnowledgeOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                   <div class="col-sm-2">
                        AND/OR my strong skill with
                    </div>
                    <div class="col-sm-4">
                        <select name="gea6" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">

                           [#if currentGenerate?has_content && currentGenerate.gea6?has_content]
                            [@generateSkillOptions  currentGenerate.gea6 /]
                          [#else]
                            [@generateSkillOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-2">
                      combined with my
                       
                    </div>
                    <div class="col-sm-4">
                        <select name="gea7" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                          [#if currentGenerate?has_content && currentGenerate.gea7?has_content]
                            [@generateAttributeOptions  currentGenerate.gea7 /]
                          [#else]
                            [@generateAttributeOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-2">
                        means I consistently achieve
                    </div>
                  </div>
                   <div class="row">
                    <div class="col-sm-9">
                       <select name="gea8" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                            [#if currentGenerate?has_content && currentGenerate.gea8?has_content]
                            [@generateQ3Options  currentGenerate.gea8 /]
                          [#else]
                            [@generateQ3Options  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-3">
                        for my employers/clients.
                    </div>
                  
              </td>
            </tr>
            <tr>
              <th></th>
              <td>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style="
                          font-size: 40px;
                          ">3</p>
                    </span>
                  </div>
              </td>
              <td>
                  <div class="row">
                    <div class="col-sm-2">
                        My knowledge of
                    </div>
                    <div class="col-sm-4">
                        <select name="gea9" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                          [#if currentGenerate?has_content && currentGenerate.gea9?has_content]
                            [@generateKnowledgeOptions  currentGenerate.gea9 /]
                          [#else]
                            [@generateKnowledgeOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                   <div class="col-sm-2">
                        AND/OR my strong skill with
                    </div>
                    <div class="col-sm-4">
                        <select name="gea10" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                           [#if currentGenerate?has_content && currentGenerate.gea10?has_content]
                            [@generateSkillOptions  currentGenerate.gea10 /]
                          [#else]
                            [@generateSkillOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-2">
                        combined with my
                    </div>
                    <div class="col-sm-4">
                        <select name="gea11" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                          [#if currentGenerate?has_content && currentGenerate.gea11?has_content]
                            [@generateAttributeOptions  currentGenerate.gea11 /]
                          [#else]
                            [@generateAttributeOptions  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-2">
                        means I consistently achieve
                    </div>
                  </div>
                   <div class="row">
                    <div class="col-sm-9">
                       <select name="gea12" class="form-control" style="/* margin-top: 10px; */margin-bottom: 10px;height: 50px;" id="exampleFormControlSelect1">
                          [#if currentGenerate?has_content && currentGenerate.gea12?has_content]
                            [@generateQ3Options  currentGenerate.gea12 /]
                          [#else]
                            [@generateQ3Options  "null" /]
                          [/#if]
                        </select>
                    </div>
                    <div class="col-sm-3">
                        for my employers/clients.
                    </div>
                  
              </td>
            </tr>
        </tbody>
      </table>
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
                <div class="row" style="margin-right: 10px;">
                      <div class="col-sm-6">
                      </div>
                      <div class="col-sm-3">
                        <a href="${cmsfn.link(previousPage)!}" class="btn " role="button" style="
                                  position: absolute;
                                  right: -50px;
                                  width: 200px;
                                   background-color: grey !important; color: white;;
                                  margin-right: -50px;
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
                                        right: 10px;
                                    ">                  
                      </div>
                    </div>
        </div>
      </form>

      <script>

[#macro generateKnowledgeOptions  currentValue]
[#if currentMatrix?has_content]
  [#if currentValue?has_content]
    [#if currentMatrix.inkn1?has_content] <option value="${currentMatrix.inkn1}" [#if currentMatrix.inkn1 == currentValue]${"selected"} [/#if]>${currentMatrix.inkn1}</option> [/#if]
    [#if currentMatrix.inkn2?has_content] <option value="${currentMatrix.inkn1}" [#if currentMatrix.inkn1 == currentValue]${"selected"} [/#if]>${currentMatrix.inkn2}</option> [/#if]
    [#if currentMatrix.inkn3?has_content] <option value="${currentMatrix.inkn3}" [#if currentMatrix.inkn3 == currentValue]${"selected"} [/#if]>${currentMatrix.inkn3}</option> [/#if]
    [#if currentMatrix.orkn1?has_content] <option value="${currentMatrix.orkn1}" [#if currentMatrix.orkn1 == currentValue]${"selected"} [/#if]>${currentMatrix.orkn1}</option> [/#if]
    [#if currentMatrix.orkn2?has_content] <option value="${currentMatrix.orkn2}" [#if currentMatrix.orkn2 == currentValue]${"selected"} [/#if]>${currentMatrix.orkn2}</option> [/#if]
    [#if currentMatrix.orkn3?has_content] <option value="${currentMatrix.orkn3}" [#if currentMatrix.orkn3 == currentValue]${"selected"} [/#if]>${currentMatrix.orkn3}</option> [/#if]
    [#if currentMatrix.rokn1?has_content] <option value="${currentMatrix.rokn1}" [#if currentMatrix.rokn1 == currentValue]${"selected"} [/#if]>${currentMatrix.rokn1}</option> [/#if]
    [#if currentMatrix.rokn2?has_content] <option value="${currentMatrix.rokn2}" [#if currentMatrix.rokn2 == currentValue]${"selected"} [/#if]>${currentMatrix.rokn2}</option> [/#if]
    [#if currentMatrix.rokn3?has_content] <option value="${currentMatrix.rokn3}" [#if currentMatrix.rokn3 == currentValue]${"selected"} [/#if]>${currentMatrix.roat3}</option> [/#if]
  [#else]
    <option value="" selected disabled> -- insert knowledge item -- </option>
  [#if currentMatrix.inkn1?has_content] <option value="${currentMatrix.inkn1}">${currentMatrix.inkn1}</option> [/#if]
    [#if currentMatrix.inkn2?has_content] <option value="${currentMatrix.inkn2}">${currentMatrix.inkn2}</option> [/#if]
    [#if currentMatrix.inkn3?has_content] <option value="${currentMatrix.inkn3}">${currentMatrix.inkn3}</option> [/#if]
    [#if currentMatrix.orkn1?has_content] <option value="${currentMatrix.orkn1}">${currentMatrix.orkn1}</option> [/#if]
    [#if currentMatrix.orkn2?has_content] <option value="${currentMatrix.orkn2}">${currentMatrix.orkn2}</option> [/#if]
    [#if currentMatrix.orkn3?has_content] <option value="${currentMatrix.orkn3}">${currentMatrix.orkn3}</option> [/#if]
    [#if currentMatrix.rokn1?has_content] <option value="${currentMatrix.rokn1}">${currentMatrix.rokn1}</option> [/#if]
    [#if currentMatrix.rokn2?has_content] <option value="${currentMatrix.rokn2}">${currentMatrix.rokn2}</option> [/#if]
    [#if currentMatrix.rokn3?has_content] <option value="${currentMatrix.rokn3}">${currentMatrix.roat3}</option> [/#if]
  
  [/#if]
  [#else]
      <option value="" selected disabled> -- insert knowledge item -- </option>
  [/#if]
[/#macro ]

[#macro generateSkillOptions  currentValue]
  [#if currentMatrix?has_content]
        <option value="" selected disabled> -- insert Skill item -- </option>
    [#if currentMatrix.insk1?has_content] <option value="${currentMatrix.insk1}"[#if currentMatrix.insk1 == currentValue]${"selected"} [/#if]>${currentMatrix.insk1}</option> [/#if]
    [#if currentMatrix.insk2?has_content] <option value="${currentMatrix.insk2}"[#if currentMatrix.insk2 == currentValue]${"selected"} [/#if]>${currentMatrix.insk2}</option> [/#if]
    [#if currentMatrix.insk3?has_content] <option value="${currentMatrix.insk3}"[#if currentMatrix.insk3 == currentValue]${"selected"} [/#if]>${currentMatrix.insk3}</option> [/#if]
    [#if currentMatrix.orsk1?has_content] <option value="${currentMatrix.orsk1}"[#if currentMatrix.orsk1 == currentValue]${"selected"} [/#if]>${currentMatrix.orsk1}</option> [/#if]
    [#if currentMatrix.orsk2?has_content] <option value="${currentMatrix.orsk2}"[#if currentMatrix.orsk2 == currentValue]${"selected"} [/#if]>${currentMatrix.orsk2}</option> [/#if]
    [#if currentMatrix.orsk3?has_content] <option value="${currentMatrix.orsk3}"[#if currentMatrix.orsk3 == currentValue]${"selected"} [/#if]>${currentMatrix.orsk3}</option> [/#if]
    [#if currentMatrix.rosk1?has_content] <option value="${currentMatrix.rosk1}"[#if currentMatrix.rosk1 == currentValue]${"selected"} [/#if]>${currentMatrix.rosk1}</option> [/#if]
    [#if currentMatrix.rosk2?has_content] <option value="${currentMatrix.rosk2}"[#if currentMatrix.rosk2 == currentValue]${"selected"} [/#if]>${currentMatrix.rosk2}</option> [/#if]
    [#if currentMatrix.rosk3?has_content] <option value="${currentMatrix.rosk3}"[#if currentMatrix.rosk3 == currentValue]${"selected"} [/#if]>${currentMatrix.rosk3}</option> [/#if]

  [#else]
    <option value="" selected disabled> -- insert Skill item -- </option>
  [/#if]
[/#macro ]

[#macro generateAttributeOptions  currentValue]
[#if currentMatrix?has_content]
        <option value="" selected disabled> -- insert Attribute item -- </option>
    
    [#if currentMatrix.inat1?has_content] <option value="${currentMatrix.inat1}"[#if currentMatrix.inat1 == currentValue]${"selected"} [/#if]>${currentMatrix.inat1}</option> [/#if]
    [#if currentMatrix.inat2?has_content] <option value="${currentMatrix.inat2}"[#if currentMatrix.inat2 == currentValue]${"selected"} [/#if]>${currentMatrix.inat2}</option> [/#if]
    [#if currentMatrix.inat3?has_content] <option value="${currentMatrix.inat3}"[#if currentMatrix.inat3 == currentValue]${"selected"} [/#if]>${currentMatrix.inat3}</option> [/#if]
    [#if currentMatrix.orat1?has_content] <option value="${currentMatrix.orat1}"[#if currentMatrix.orat1 == currentValue]${"selected"} [/#if]>${currentMatrix.orat1}</option> [/#if]
    [#if currentMatrix.orat2?has_content] <option value="${currentMatrix.orat2}"[#if currentMatrix.orat2 == currentValue]${"selected"} [/#if]>${currentMatrix.orat2}</option> [/#if]
    [#if currentMatrix.orat3?has_content] <option value="${currentMatrix.orat3}"[#if currentMatrix.orat3 == currentValue]${"selected"} [/#if]>${currentMatrix.orat3}</option> [/#if]
    [#if currentMatrix.roat1?has_content] <option value="${currentMatrix.roat1}"[#if currentMatrix.roat1 == currentValue]${"selected"} [/#if]>${currentMatrix.roat1}</option> [/#if]
    [#if currentMatrix.roat2?has_content] <option value="${currentMatrix.roat2}"[#if currentMatrix.roat2 == currentValue]${"selected"} [/#if]>${currentMatrix.roat2}</option> [/#if]
    [#if currentMatrix.roat3?has_content] <option value="${currentMatrix.roat3}"[#if currentMatrix.roat3 == currentValue]${"selected"} [/#if]>${currentMatrix.roat3}</option> [/#if]
  [#else]
    <option value="" selected disabled> -- insert Attribute item -- </option>
  [/#if]
[/#macro ]

[#macro generateQ3Options current]
   [#if currentQ3?has_content]
    <option value="" selected disabled> -- insert most valuable impact item from the organisational level (question 3) impact boxes on page 16 or 17 -- </option>

    [#if currentQ3.q3a1?has_content] <option value="${currentQ3.q3a1}">${currentQ3.q3a1}</option> [/#if]
    [#if currentQ3.q3a2?has_content] <option value="${currentQ3.q3a2}">${currentQ3.q3a2}</option> [/#if]
    [#if currentQ3.q3a3?has_content] <option value="${currentQ3.q3a3}">${currentQ3.q3a3}</option> [/#if]
    [#if currentQ3.q3a4?has_content] <option value="${currentQ3.q3a4}">${currentQ3.q3a4}</option> [/#if]
    [#if currentQ3.q3a5?has_content] <option value="${currentQ3.q3a5}">${currentQ3.q3a5}</option> [/#if]
   [#else]
    <option value="" selected disabled> -- insert most valuable impact item from the organisational level (question 3) impact boxes on page 16 or 17 -- </option>

   [/#if]
[/#macro ]
