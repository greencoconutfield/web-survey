[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentQ5 = cmsfn.contentByPath("/"+currentUser +"/q5" , "ksa")! /]
  [#assign currentQ4 = cmsfn.contentByPath("/"+currentUser +"/q4" , "ksa")! /]
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
        <div class="tab"><span style="font-size: 40px; color: #216478;margin-left: 80px;"> Applying your KSA to your current challenges
 </span>
          <div class="row">
            <span style="font-size: 20px; color: #216478; margin-left: 100px;">ACTIVITY: </span>
          </div>
          <div class="row">
           <span style="font-size: 20px; margin-left: 100px;margin-right: 200px;"> ${content.desc!"Each item from your ‘NOT Already Applied List’ has a dedicated space on this page. Fill these spaces with action steps that the corresponding KSA item would allow you to take."}</span>
          </div>
          <table class="table">
            <tbody>
              <tr>
                <th></th>
                <td>
                    <div class="row" style="margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span>
                          <p class="text-center" style="color: #216478;
                            font-size: 40px;
                            ">Q5 </p>
                      </span>
                    </div>
                </td>
                <td>
                    <div class="row" style="
                      width: 300px;
                      margin-right: 50px;
                      font-size: 20px;
                      ">
                      <span>
                          <p class="text-center">${content.detail!"What action steps would you be able to take if you used your KSA items from your ‘NOT Already Applied List’ above to address Your Focus Challenge?"}</p>
                      </span>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="row" style="
                      width: 300px;
                      margin-right: 50px;
                      font-size: 20px;
                      ">
                      <span>
                          <p class="text-center" style="
                     font-weight: bold">Need Help? </p>
                      </span>
                    </div>

                     <div class="row" style="
                      width: 300px;
                      margin-right: 50px;
                      font-size: 16px;
                      ">
                      <span>
                          <p class=""  style="
                     font-weight: bold">Think of a time when you have used the KSA’s you have identi ed to successfully deal with a similar challenge in the past. How did you do that? What were the action steps you took then?</p>
                      </span>
                    </div>
                    
                </td>
                <td>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">[#if currentQ4?has_content && currentQ4.q4a1?has_content] ${currentQ4.q4a1} - Action Step [#else] NOT Already Applied List Item 1 Action Step [/#if]</p>
                      </span>
                      <textarea name="q5a1" class="form-control" id="q5a1" rows="2"  >[#if currentQ5?has_content && currentQ5.q5a1?has_content] ${currentQ5.q5a1} [/#if]</textarea>
                    </div>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">[#if currentQ4?has_content && currentQ4.q4a2?has_content] ${currentQ4.q4a2} - Action Step [#else] NOT Already Applied List Item 2 Action Step[/#if] </p>
                      </span>
                      <textarea name="q5a2" class="form-control" id="q5a2" rows="2"  >[#if currentQ5?has_content && currentQ5.q5a2?has_content] ${currentQ5.q5a2} [/#if]</textarea>

                    </div>
                   <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">[#if currentQ4?has_content && currentQ4.q4a3?has_content] ${currentQ4.q4a3} - Action Step [#else] NOT Already Applied List Item 3 Action Step[/#if] </p>
                      </span>
                      <textarea name="q5a3" class="form-control" id="q5a3" rows="2"  >[#if currentQ5?has_content && currentQ5.q5a3?has_content] ${currentQ5.q5a3} [/#if]</textarea>
                    </div>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">[#if currentQ4?has_content && currentQ4.q4a4?has_content] ${currentQ4.q4a4} - Action Step [#else] NOT Already Applied List Item 4 Action Step [/#if]</p>
                      </span>
                      <textarea name="q5a4" class="form-control" id="q5a4" rows="2"  >[#if currentQ5?has_content && currentQ5.q5a4?has_content] ${currentQ5.q5a4} [/#if]</textarea>
                    </div>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">[#if currentQ4?has_content && currentQ4.q4a5?has_content] ${currentQ4.q4a5} - Action Step [#else] NOT Already Applied List Item 5 Action Step [/#if]</p>
                      </span>
                      <textarea name="q5a5" class="form-control" id="q5a1" rows="2"  >[#if currentQ5?has_content && currentQ5.q5a5?has_content] ${currentQ5.q5a5} [/#if]</textarea>
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
                <div class="row" style="margin-right: 50px;">
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

     

[#macro generateOptions ]
    [#if currentQ5.q1a1?has_content] <option value="${currentQ5.q1a1}">${currentQ5.q1a1}</option> [/#if]
    [#if currentQ5.q1a2?has_content] <option value="${currentQ5.q1a2}">${currentQ5.q1a2}</option> [/#if]
    [#if currentQ5.q1a3?has_content] <option value="${currentQ5.q1a3}">${currentQ5.q1a3}</option> [/#if]
    [#if currentQ5.q1a4?has_content] <option value="${currentQ5.q1a4}">${currentQ5.q1a4}</option> [/#if]
    [#if currentQ5.q1a5?has_content] <option value="${currentQ5.q1a5}">${currentQ5.q1a5}</option> [/#if]
    [#if currentImpactMost.q2a1?has_content] <option value="${currentImpactMost.q2a1}">${currentImpactMost.q2a1}</option> [/#if]
    [#if currentImpactMost.q2a2?has_content] <option value="${currentImpactMost.q2a2}">${currentImpactMost.q2a2}</option> [/#if]
    [#if currentImpactMost.q2a3?has_content] <option value="${currentImpactMost.q2a3}">${currentImpactMost.q2a3}</option> [/#if]
    [#if currentImpactMost.q2a4?has_content] <option value="${currentImpactMost.q2a4}">${currentImpactMost.q2a4}</option> [/#if]
    [#if currentImpactMost.q2a5?has_content] <option value="${currentImpactMost.q2a5}">${currentImpactMost.q2a5}</option> [/#if]
 
[/#macro ]