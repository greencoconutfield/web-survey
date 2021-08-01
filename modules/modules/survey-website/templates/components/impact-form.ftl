[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentImpactLeast = cmsfn.contentByPath("/"+currentUser +"/impact-least" , "ksa")! /]
  [#assign currentMatrix = cmsfn.contentByPath("/"+currentUser +"/matrix" , "ksa")! /]
[/#if]

[#if current?has_content]
  [#assign currentQ1 = cmsfn.contentByPath("/"+currentUser +"/q1" , "ksa")! /]
  [#assign currentMatrix = cmsfn.contentByPath("/"+currentUser +"/matrix" , "ksa")! /]
[/#if]
<form id="${content.title?default("form0")}" method="post" action="" enctype="${def.parameters.formEnctype?default("multipart/form-data")}" >
      <div class="form-item-hidden">
        <input type="hidden" name="mgnlModelExecutionUUID" value="${content.@id}" />
        <input type="hidden" name="field" value="" />
        [#if model.formState?has_content]
        <input type="hidden" name="mgnlFormToken" value="${model.formState.token!}" />
        [/#if]
        <input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />
      </div>
        <div class="tab"><span style="font-size: 40px; color: #216478;margin-left: 80px;"> The impact of your Value Profile </span>
          <div class="row">
            <span style="font-size: 20px; color: #216478; margin-left: 100px;">ACTIVITY: </span>
          </div>
          <div class="row">
           <span style="font-size: 20px; margin-left: 100px;margin-right: 200px;"> Complete the following three instructions for each of the above items in your <span style="font-weight: bold;"> “use the least” </span> list.</span>
          </div>
          <table class="table">
            <tbody>
                <tr style="line-height: 10px;">
                  <th></th>
                  <td> 
                    <div class="row" style=" margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center" style="font-weight: bold">[#if currentQ1?has_content && currentQ1.q1a1?has_content] ${currentQ1.q1a1} [#else] Use the least list Item 1 [/#if] </p></span>
                    </div>
                  <td>
                    <div class="row" style=" margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center" style="font-weight: bold">[#if currentQ1?has_content && currentQ1.q1a2?has_content] ${currentQ1.q1a2} [#else] Use the least list Item 2 [/#if] </p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style=" margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center" style="font-weight: bold">[#if currentQ1?has_content && currentQ1.q1a3?has_content] ${currentQ1.q1a3} [#else] Use the least list Item 3 [/#if] </p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style=" margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center" style="font-weight: bold">[#if currentQ1?has_content && currentQ1.q1a4?has_content] ${currentQ1.q1a4} [#else] Use the least list Item 5 [/#if] </p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style=" margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center" style="font-weight: bold">[#if currentQ1?has_content && currentQ1.q1a5?has_content] ${currentQ1.q1a5} [#else] Use the least list Item 5 [/#if] </p></span>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>
                    <div class="row" style="width: 200px" >
                      <span> <p style="text-align: right !important; margin-left: 20px !important;"> 1. Briefly describe the most important advantage/ benefit this KSA item has given YOU in your career. </p></span>
                    </div>
                  </th>
                  <td>
                      <textarea name="im11" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im11?has_content] ${currentImpactLeast.im11} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im12" class="form-control" id="exampleFormControlTextarea1" rows="5">[#if currentImpactLeast?has_content && currentImpactLeast.im12?has_content] ${currentImpactLeast.im12} [/#if]</textarea>
                  </td>
                 <td>
                     <textarea name="im13" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im13?has_content] ${currentImpactLeast.im13} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im14" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im14?has_content] ${currentImpactLeast.im14} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im15" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im15?has_content] ${currentImpactLeast.im15} [/#if]</textarea>
                  </td>
                </tr>
                 <tr>
                  <th>
                    <div class="row" style="width: 200px">
                      <span> <p style="text-align: right !important; margin-left: 20px !important;"> 2. Briefly describe the most important advantage/ benefit this KSA item has given OTHERS in your career. </p></span>
                    </div>
                  </th>
                  <td>
                      <textarea name="im21" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im21?has_content] ${currentImpactLeast.im21} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im22" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im22?has_content] ${currentImpactLeast.im22} [/#if]</textarea>
                  </td>
                 <td>
                      <textarea name="im23" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im24?has_content] ${currentImpactLeast.im24} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im24" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im11?has_content] ${currentImpactLeast.im11} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im25" class="form-control" id="exampleFormControlTextarea1" rows="5"> 
                        [#if currentImpactLeast?has_content && currentImpactLeast.im25?has_content] ${currentImpactLeast.im25} [/#if]</textarea>
                  </td>
                </tr>
                 <tr>
                  <th>
                     <div class="row" style="width: 200px">
                      <span> <p style="text-align: right !important; margin-left: 20px !important;"> 3. Briefly describe the most important advantage/ benefit this KSA item has given ORGANISATIONS in your career. </p></span>
                    </div>
                  </th>
                  <td>
                  <textarea name="im31" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im31?has_content] ${currentImpactLeast.im31} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im32" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im32?has_content] ${currentImpactLeast.im32} [/#if]</textarea>
                  </td>
                 <td>
                 <textarea name="im33" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im33?has_content] ${currentImpactLeast.im33} [/#if]</textarea>                

                  </td>
                  <td><textarea name="im34" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im34?has_content] ${currentImpactLeast.im34} [/#if]</textarea>
                  </td>
                  <td>
                     <textarea name="im35" class="form-control" id="exampleFormControlTextarea1" rows="5"> [#if currentImpactLeast?has_content && currentImpactLeast.im35?has_content] ${currentImpactLeast.im35} [/#if]</textarea>
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
                      <div class="row">
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
                                        right: 30px;
                                    ">                  
                      </div>
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