
[#if content.previous?has_content ]
  [#assign previousPage = cmsfn.contentById(content.previous)! /]
  [#assign previousLink = cmsfn.link(previousPage)! /]
[/#if]
[#if content.redirect?has_content ]
  [#assign nextPage = cmsfn.contentById(content.redirect)! /]
  [#assign nextLink = cmsfn.link(nextPage)! /]
[/#if]
[#assign currentUser = ctx.user.name! /]
[#assign current = cmsfn.contentByPath("/"+currentUser, "ksa")! /]
[#if current?has_content]
  [#assign currentMatrix = cmsfn.contentByPath("/"+currentUser +"/matrix" , "ksa")! /]
  [#assign currentQ3 = cmsfn.contentByPath("/"+currentUser +"/q3" , "ksa")! /]
  [#assign currentQ78 = cmsfn.contentByPath("/"+currentUser +"/q7" , "ksa")! /]
  [#assign currentGenerate = cmsfn.contentByPath("/"+currentUser +"/generate" , "ksa")! /]
[/#if]
  <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/survey-website/webresources/css/smoothness/jquery-ui-1.8.17.custom.css">
  <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/survey-website/webresources/css/main.css">

  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/js/jquery/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/js/jquery/jquery-ui-1.8.17.custom.min.js"></script>
  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/dist/jspdf.umd.js"></script>
  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/js/basic.js"></script>
<script>
function demoTextAlign() {
  var pdf = new jsPDF("p", "pt", "letter");

  pdf.setFillColor(0);
  pdf.circle(140, 50, 2, "F");
  pdf.text("This text is normally\raligned.", 140, 50);

  pdf.circle(140, 120, 2, "F");
  pdf.text("This text is centered\raround\rthis point.", 140, 120, "center");

  pdf.circle(140, 300, 2, "F");
  pdf.text(
    "This text is rotated\rand centered around\rthis point.",
    140,
    300,
    45,
    "center"
  );
};
    function demoLandscapeTextAlign() {
        var pdf = new jsPDF("l", "pt", "a4");
        
        //Headline
        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(30)
        pdf.text(50, 50, "Your Value Statements Generator");
        pdf.setTextColor(0,0,0);

        //Abstract text
        size = 16
        margin = 80; // inches on a 8.5 x 11 inch sheet.
        verticalOffset = margin;
        text= "Here is a simple tool to help you build your most relevant KSA items in easy-to-remember sentences that we call Value Statements. No matter what professional situation you  nd yourself in Your Value Statements are your core value propositions as a professional. You can use these statements to easily create elevator pitches, create impact in your CV, nail important conversations like job interviews, or to win business with prospective clients.";
        
        pdf
        .setDrawColor(0, 0, 0)
        .setLineWidth(1 / 72)

        lines = pdf
            .setFont("Times","Roman")
            .setFontSize(16)
            .splitTextToSize(text, 750);
    
        pdf.text(50, verticalOffset + size / 72, lines);
        verticalOffset += ((lines.length + 0.5) * size) / 72;

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(50)
        pdf.text(50, 200, "1");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 180, "My knowledge of");

        pdf.text(275, 180,  '${(currentGenerate.gea1!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 180, "AND/OR my strong skill with");

        pdf.text(675, 180,  '${(currentGenerate.gea2!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 220, "combined with my");

        pdf.text(275, 220,  '${(currentGenerate.gea3!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 220, "means I consistently achieve");

        pdf.text(100, 260,  '${(currentGenerate.gea4!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(560, 260, "for my employers/clients.");

        pdf.line(50, 280, 800, 280);

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(50)
        pdf.text(50, 350, "2");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 330, "My knowledge of");

        pdf.text(275, 330,  '${(currentGenerate.gea5!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 330, "AND/OR my strong skill with");

        pdf.text(675, 330,  '${(currentGenerate.gea6!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 370, "combined with my");

        pdf.text(275, 370,  '${(currentGenerate.gea7!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 370, "means I consistently achieve");


        pdf.text(100, 410,  '${(currentGenerate.gea8!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(560, 410, "for my employers/clients.");

        pdf.line(50, 430, 800, 430);

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(50)
        pdf.text(50, 500, "3");
        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 480, "My knowledge of");

        pdf.text(275, 480,  '${(currentGenerate.gea9!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 480, "AND/OR my strong skill with");

        pdf.text(675, 480,  '${(currentGenerate.gea10!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 520, "combined with my");

        pdf.text(275, 520,  '${(currentGenerate.gea11!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 520, "means I consistently achieve");

        pdf.text(100, 560,  '${(currentGenerate.gea12!"please insert your idea")?replace("^\\s+|\\s+$|\\n|\\r", "", "rm")}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(560, 560, "for my employers/clients.");

        pdf.save("KSA.pdf");
    };
  </script>



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
                  <div class="row" >
                    <div class="col-sm-2" style="margin-top: 20px">
                        My knowledge of
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea1!"please insert your idea"}  
                    </div>
                   <div class="col-sm-2" style="margin-top: 20px">
                        AND/OR my strong skill with
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea2!"please insert your idea"}  

                    </div>
                    <div class="col-sm-2" style="margin-top: 20px">
                        combined with my
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea3!"please insert your idea"}  

                    </div>
                    <div class="col-sm-2" style="margin-top: 20px">
                        means I consistently achieve
                    </div>
                  </div>
                   <div class="row">
                    <div class="col-sm-9" style="margin-top: 20px">
                     ${currentGenerate.gea4!"please insert your idea"}  

                    </div>
                    <div class="col-sm-3" style="margin-top: 20px">
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
                    <div class="col-sm-2" style="margin-top: 20px">
                        My knowledge of
                        
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea5!"please insert your idea"}  

                    </div>
                   <div class="col-sm-2" style="margin-top: 20px">
                        AND/OR my strong skill with
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea6!"please insert your idea"}  

                    </div>
                    <div class="col-sm-2" style="margin-top: 20px">
                      combined with my
                       
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea7!"please insert your idea"}  

                    </div>
                    <div class="col-sm-2" style="margin-top: 20px">
                        means I consistently achieve
                    </div>
                  </div>
                   <div class="row">
                    <div class="col-sm-9" style="margin-top: 20px">
                      ${currentGenerate.gea8!"please insert your idea"}  
                    </div>
                    <div class="col-sm-3" style="margin-top: 20px">
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
                    <div class="col-sm-2" style="margin-top: 20px">
                        My knowledge of
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea9!"please insert your idea"}  

                    </div>
                   <div class="col-sm-2" style="margin-top: 20px">
                        AND/OR my strong skill with
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea10!"please insert your idea"}  

                    </div>
                    <div class="col-sm-2" style="margin-top: 20px">
                        combined with my
                    </div>
                    <div class="col-sm-4" style="margin-top: 20px">
                      ${currentGenerate.gea11!"please insert your idea"}  

                    </div>
                    <div class="col-sm-2" style="margin-top: 20px">
                        means I consistently achieve
                    </div>
                  </div>
                   <div class="row">
                    <div class="col-sm-9" style="margin-top: 20px">
                      ${currentGenerate.gea12!"please insert your idea"}  

                    </div>
                    <div class="col-sm-3" style="margin-top: 20px">
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
                    <a class="btn" href="${cmsfn.link(nextPage)}" onclick="demoLandscapeTextAlign()" type="submit" style="
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
                                    ">   Export  </a>             
                      </div>
                    </div>
        </div>

      <script>

