[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentQ78 = cmsfn.contentByPath("/"+currentUser +"/q7" , "ksa")! /]
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
        <div class="tab"><span style="font-size: 40px; color: #216478;margin-left: 80px;"> Applying your KSA to your current challenges
 </span>
          
          <table class="table">
            <tbody>
              <tr>
                <th></th>
                <td>
                    <div class="row" style="margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span>
                          <p class="text-center" style="color: #216478;
                            font-size: 40px;
                            ">Q7 </p>
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
                          <p class="text-center">What might be the negative outcomes from these action steps?</p>
                      </span>
                    </div>
                    
                    
                </td>
                <td>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">Action Step 1 negative outcomes </p>
                      </span>
                      <textarea name="q7a1" class="form-control" id="q7a1" rows="2" style="text-indent: -100px" >${currentQ78.q7a1!}</textarea>
                    </div>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">Action Step 2 negative outcomes </p>
                      </span>
                      <textarea name="q7a2" class="form-control" id="q7a1" rows="2" style="text-indent: -100px">${currentQ78.q7a2!}</textarea>
                    </div>
                   <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">Action Step 3 negative outcomes</p>
                      </span>
                      <textarea name="q7a3" class="form-control" id="q7a1" rows="2" style="text-indent: -100px" >${currentQ78.q7a3!}</textarea>
                    </div>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">Action Step 4 negative outcomes</p>
                      </span>
                      <textarea name="q7a4" class="form-control" id="q7a1" rows="2" style="text-indent: -100px" >${currentQ78.q7a4!}</textarea>
                    </div>
                    <div class="row" style="margin-right: 50px;">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">Action Step 5 negative outcomes</p>
                      </span>
                      <textarea name="q7a5" class="form-control" id="q7a1" rows="2" style="text-indent: -100px" >${currentQ78.q7a5!}</textarea>
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
                            ">Q8 </p>
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
                          <p class="text-center">Knowing the above negative possible outcomes, which action steps emerge as still worth pursuing as a means of addressing Your Focus Challenge in question?</p>
                      </span>
                    </div>
                    
                    
                </td>
                <td>
                    <div class="row" >
                      <div class="col-sm-6">
                        <span>
                            <p class="" style="
                              font-size: 18px;
                              font-weight: bold;
                              ">Action Step 1 worth pursuing?</p>
                        </span>
                      </div>
                       <div class="col-sm-4">
                          <label class="radio-inline"><input type="radio" name="q8a1" id="q8a11" value="on" [#if currentQ78.q8a1?has_content && currentQ78.q8a1 =="on"] ${"checked"} [/#if]>Yes</label>
                          <label class="radio-inline"><input type="radio" name="q8a1" id="q8a12" value="off" [#if currentQ78.q8a1?has_content && currentQ78.q8a1 =="off"] ${"checked"} [/#if]> No</label>
                      </div>
                      
                    </div>
                    <div class="row" >
                      <div class="col-sm-6">
                        <span>
                            <p class="" style="
                              font-size: 18px;
                              font-weight: bold;
                              ">Action Step 2 worth pursuing?</p>
                        </span>
                      </div>
                       <div class="col-sm-4">
                          <label class="radio-inline"><input type="radio" name="q8a2" value="on" [#if currentQ78.q8a2?has_content && currentQ78.q8a2 =="on"] ${"checked"} [/#if]>Yes</label>
                          <label class="radio-inline"><input type="radio" name="q8a2" value="off" [#if currentQ78.q8a2?has_content && currentQ78.q8a2 =="off"] ${"checked"} [/#if]>No</label>
                      </div>
                      
                    </div>
                    <div class="row" >
                      <div class="col-sm-6">
                        <span>
                            <p class="" style="
                              font-size: 18px;
                              font-weight: bold;
                              ">Action Step 3 worth pursuing?</p>
                        </span>
                      </div>
                       <div class="col-sm-4">
                          <label class="radio-inline"><input type="radio" name="q8a3" value="on" [#if currentQ78.q8a3?has_content && currentQ78.q8a3 =="on"] ${"checked"} [/#if]>Yes</label>
                          <label class="radio-inline"><input type="radio" name="q8a3" value="off" [#if currentQ78.q8a3?has_content && currentQ78.q8a3 =="off"] ${"checked"} [/#if]>No</label>
                      </div>
                      
                    </div>
                    <div class="row" >
                      <div class="col-sm-6">
                        <span>
                            <p class="" style="
                              font-size: 18px;
                              font-weight: bold;
                              ">Action Step 4 worth pursuing?</p>
                        </span>
                      </div>
                       <div class="col-sm-4">
                          <label class="radio-inline"><input type="radio" name="q8a4" value="on" [#if currentQ78.q8a4?has_content && currentQ78.q8a4 =="on"] ${"checked"} [/#if]>Yes</label>
                          <label class="radio-inline"><input type="radio" name="q8a4" value="off" [#if currentQ78.q8a4?has_content && currentQ78.q8a4 =="off"] ${"checked"} [/#if]>No</label>
                      </div>
                      
                    </div>
                    <div class="row" >
                      <div class="col-sm-6">
                        <span>
                            <p class="" style="
                              font-size: 18px;
                              font-weight: bold;
                              ">Action Step 5 worth pursuing?</p>
                        </span>
                      </div>
                       <div class="col-sm-4">
                          <label class="radio-inline"><input type="radio" name="q8a5" value="on" [#if currentQ78.q8a5?has_content && currentQ78.q8a5 =="on"] ${"checked"} [/#if]>Yes</label>
                          <label class="radio-inline"><input type="radio" name="q8a5" value="off" [#if currentQ78.q8a5?has_content && currentQ78.q8a5 =="off"] ${"checked"} [/#if]>No</label>
                      </div>
                      
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
      <script>

[#macro generateOptions ]
    [#if currentImpactLeast.q1a1?has_content] <option value="${currentImpactLeast.q1a1}">${currentImpactLeast.q1a1}</option> [/#if]
    [#if currentImpactLeast.q1a2?has_content] <option value="${currentImpactLeast.q1a2}">${currentImpactLeast.q1a2}</option> [/#if]
    [#if currentImpactLeast.q1a3?has_content] <option value="${currentImpactLeast.q1a3}">${currentImpactLeast.q1a3}</option> [/#if]
    [#if currentImpactLeast.q1a4?has_content] <option value="${currentImpactLeast.q1a4}">${currentImpactLeast.q1a4}</option> [/#if]
    [#if currentImpactLeast.q1a5?has_content] <option value="${currentImpactLeast.q1a5}">${currentImpactLeast.q1a5}</option> [/#if]
    [#if currentImpactMost.q2a1?has_content] <option value="${currentImpactMost.q2a1}">${currentImpactMost.q2a1}</option> [/#if]
    [#if currentImpactMost.q2a2?has_content] <option value="${currentImpactMost.q2a2}">${currentImpactMost.q2a2}</option> [/#if]
    [#if currentImpactMost.q2a3?has_content] <option value="${currentImpactMost.q2a3}">${currentImpactMost.q2a3}</option> [/#if]
    [#if currentImpactMost.q2a4?has_content] <option value="${currentImpactMost.q2a4}">${currentImpactMost.q2a4}</option> [/#if]
    [#if currentImpactMost.q2a5?has_content] <option value="${currentImpactMost.q2a5}">${currentImpactMost.q2a5}</option> [/#if]
 
[/#macro ]