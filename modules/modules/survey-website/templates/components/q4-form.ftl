[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentQ1 = cmsfn.contentByPath("/"+currentUser +"/q1" , "ksa")! /]
  [#assign currentQ2 = cmsfn.contentByPath("/"+currentUser +"/q2" , "ksa")! /]
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
           <span style="font-size: 20px; margin-left: 100px;margin-right: 200px;"> ${content.desc!"Now, looking back at your ‘Use the Least’ and your ‘Use the most’ lists (ten items in total) answer the below questions in your own time. "}</span>
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
                            ">Q4 </p>
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
                          <p class="text-center">${content.detail!"Which of these ten items have you NOT already applied to Your Focus Challenge?"}</p>
                      </span>
                    </div>
                </td>
                <td>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">NOT Already Applied List </p>
                      </span>
                       <select name="q4a1" class="form-control" style="margin-top: 10px;margin-bottom: 10px; height: 50px;" id="exampleFormControlSelect1">
                           [#if currentQ4?has_content && currentQ4.q4a1?has_content]
                            [@generateOptions  currentQ4.q4a1 /]
                          [#else]
                            [@generateOptions  "" /]
                          [/#if]
                        </select>
                       <select name="q4a2" class="form-control" style="margin-top: 10px;margin-bottom: 10px; height: 50px;" id="exampleFormControlSelect1">
                         [#if currentQ4?has_content && currentQ4.q4a2?has_content]
                            [@generateOptions  currentQ4.q4a2 /]
                          [#else]
                            [@generateOptions  "" /]
                          [/#if]

                      </select>
                       <select name="q4a3" class="form-control" style="margin-top: 10px;margin-bottom: 10px; height: 50px;" id="exampleFormControlSelect1">
                        [#if currentQ4?has_content && currentQ4.q4a3?has_content]
                            [@generateOptions  currentQ4.q4a3 /]
                          [#else]
                            [@generateOptions  "" /]
                          [/#if]
                      </select>
                       <select name="q4a4" class="form-control" style="margin-top: 10px;margin-bottom: 10px; height: 50px;" id="exampleFormControlSelect1">
                          [#if currentQ4?has_content && currentQ4.q4a4?has_content]
                            [@generateOptions  currentQ4.q4a4 /]
                          [#else]
                            [@generateOptions  "" /]
                          [/#if]
                      </select>
                       <select name="q4a5" class="form-control" style="margin-top: 10px;margin-bottom: 10px; height: 50px;" id="exampleFormControlSelect1">
                         [#if currentQ4?has_content && currentQ4.q4a5?has_content]
                            [@generateOptions  currentQ4.q4a5 /]
                          [#else]
                            [@generateOptions  "" /]
                          [/#if]
                      </select>
                     
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
                                   ">Back
                        </a>
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

    

[#macro generateOptions currentValue]
  [#if currentQ1?has_content]
  [#if currentValue?has_content]
    [#if currentQ1.q1a1?has_content] <option value="${currentQ1.q1a1}" [#if currentQ1.q1a1 == currentValue] ${"selected"} [/#if]>${currentQ1.q1a1}</option> [/#if]
    [#if currentQ1.q1a2?has_content] <option value="${currentQ1.q1a2}" [#if currentQ1.q1a2 == currentValue] ${"selected"} [/#if]>${currentQ1.q1a2}</option> [/#if]
    [#if currentQ1.q1a3?has_content] <option value="${currentQ1.q1a3}" [#if currentQ1.q1a3 == currentValue] ${"selected"} [/#if]>${currentQ1.q1a3}</option> [/#if]
    [#if currentQ1.q1a4?has_content] <option value="${currentQ1.q1a4}" [#if currentQ1.q1a4 == currentValue] ${"selected"} [/#if]>${currentQ1.q1a4}</option> [/#if]
    [#if currentQ1.q1a5?has_content] <option value="${currentQ1.q1a5}" [#if currentQ1.q1a5 == currentValue] ${"selected"} [/#if]>${currentQ1.q1a5}</option> [/#if]
    [#if currentQ2.q2a1?has_content] <option value="${currentQ2.q2a1}" [#if currentQ2.q2a1 == currentValue] ${"selected"} [/#if]>${currentQ2.q2a1}</option> [/#if]
    [#if currentQ2.q2a2?has_content] <option value="${currentQ2.q2a2}" [#if currentQ2.q2a2 == currentValue] ${"selected"} [/#if]>${currentQ2.q2a2}</option> [/#if]
    [#if currentQ2.q2a3?has_content] <option value="${currentQ2.q2a3}" [#if currentQ2.q2a3 == currentValue] ${"selected"} [/#if]>${currentQ2.q2a3}</option> [/#if]
    [#if currentQ2.q2a4?has_content] <option value="${currentQ2.q2a4}" [#if currentQ2.q2a4 == currentValue] ${"selected"} [/#if]>${currentQ2.q2a4}</option> [/#if]
    [#if currentQ2.q2a5?has_content] <option value="${currentQ2.q2a5}" [#if currentQ2.q2a5 == currentValue] ${"selected"} [/#if]>${currentQ2.q2a5}</option> [/#if]
  [#else]
     <option value="" selected disabled> -- Please select an item -- </option>

    [#if currentQ1.q1a1?has_content] <option value="${currentQ1.q1a1}">${currentQ1.q1a1}</option> [/#if]
    [#if currentQ1.q1a2?has_content] <option value="${currentQ1.q1a2}">${currentQ1.q1a2}</option> [/#if]
    [#if currentQ1.q1a3?has_content] <option value="${currentQ1.q1a3}">${currentQ1.q1a3}</option> [/#if]
    [#if currentQ1.q1a4?has_content] <option value="${currentQ1.q1a4}">${currentQ1.q1a4}</option> [/#if]
    [#if currentQ1.q1a5?has_content] <option value="${currentQ1.q1a5}">${currentQ1.q1a5}</option> [/#if]
    [#if currentQ2.q2a1?has_content] <option value="${currentQ2.q2a1}">${currentQ2.q2a1}</option> [/#if]
    [#if currentQ2.q2a2?has_content] <option value="${currentQ2.q2a2}">${currentQ2.q2a2}</option> [/#if]
    [#if currentQ2.q2a3?has_content] <option value="${currentQ2.q2a3}">${currentQ2.q2a3}</option> [/#if]
    [#if currentQ2.q2a4?has_content] <option value="${currentQ2.q2a4}">${currentQ2.q2a4}</option> [/#if]
    [#if currentQ2.q2a5?has_content] <option value="${currentQ2.q2a5}">${currentQ2.q2a5}</option> [/#if]
   [/#if]
  [#else]

       <option value="" selected disabled> -- Please select an item -- </option>
   [/#if]

[/#macro ]