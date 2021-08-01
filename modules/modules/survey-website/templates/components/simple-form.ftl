[#assign skipForm = false /]
[#if content.skipForm?has_content]
   [#assign skipForm = content.skipForm /]
[/#if]
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
[/#if]

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
        pdf.text(50, 50, "Value Pro le Matrix");
        pdf.setTextColor(0,0,0);

        //Abstract text
        size = 16
        margin = 80; // inches on a 8.5 x 11 inch sheet.
        verticalOffset = margin;
        text= "Before you begin brie y take a moment to focus on your primary reason for using this program. Keep this reason in mind as you go through the exercises. (Remember this is just of you so be as honest as you like.)";
        
        pdf
        .setDrawColor(0, 0, 0)
        .setLineWidth(1 / 72)

        lines = pdf
            .setFont("Times","Roman")
            .setFontSize(14)
            .splitTextToSize(text, 750);
    
        pdf.text(50, verticalOffset + size / 72, lines);
        verticalOffset += ((lines.length + 0.5) * size) / 72;

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(18)
        pdf.text(100, 130, "KNOWLEDGE (OF)");

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(18)
        pdf.text(320, 130, "SKILLS (FOR)");

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(18)
        pdf.text(540, 130, "ATTRIBUTES (BRING TO)");

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(18)
        pdf.text(50, 240, "INDUSTRY", null, 90);

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 170, '- ${currentMatrix.inkn1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 195, '- ${currentMatrix.inkn2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 220, '- ${currentMatrix.inkn3!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 170, '- ${currentMatrix.insk1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 195, '- ${currentMatrix.insk2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 220, '- ${currentMatrix.insk3!""}');

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 170, '- ${currentMatrix.inat1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 195, '- ${currentMatrix.inat2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 220, '- ${currentMatrix.inat3!""}');


        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(18)
        pdf.text(50, 390, "ORGANIZATION", null, 90);

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 290, '- ${currentMatrix.orkn1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 315, '- ${currentMatrix.orkn2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 345, '- ${currentMatrix.orkn3!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 290, '- ${currentMatrix.orsk1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 315, '- ${currentMatrix.orsk2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 340, '- ${currentMatrix.orsk3!""}');

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 290, '- ${currentMatrix.orat1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 315, '- ${currentMatrix.orat2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 340, '- ${currentMatrix.orat3!""}');


        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(18)
        pdf.text(50, 495, "ROLE", null, 90);

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 450, '- ${currentMatrix.rokn1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 475, '- ${currentMatrix.rokn2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(100, 500, '- ${currentMatrix.rokn3!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 450, '- ${currentMatrix.rosk1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 475, '- ${currentMatrix.rosk2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(320, 500, '- ${currentMatrix.rosk3!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 450, '- ${currentMatrix.roat1!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 475, '- ${currentMatrix.roat2!""}');

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(14)
        pdf.text(540, 500, '- ${currentMatrix.roat3!""}');



        pdf.save("KSA.pdf");
    };
  </script>
[#if !skipForm]
<form id="${content.title?default("form0")}" method="post" action="" enctype="${def.parameters.formEnctype?default("multipart/form-data")}" >
    <div class="form-item-hidden">
        <input type="hidden" name="mgnlModelExecutionUUID" value="${content.@id}" />
        <input type="hidden" name="field" value="" />
        [#if model.formState?has_content]
        <input type="hidden" name="mgnlFormToken" value="${model.formState.token!}" />
        [/#if]
        <input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />
        
    </div>
    <!-- end form-item-hidden -->
    [#if currentMatrix?has_content]
        <div class="tab">
            <span style="font-size: 40px; color: #216478;margin-left: 80px;"> Value Profile Matrix </span>
            <div class="row">
                <span style="font-size: 20px; margin-left: 100px;margin-right: 200px;"> ${content.desc!"Before you begin briefly take a moment to focus on your primary reason for using this program. Keep this reason in mind as you go through the exercises. (Remember this is just of you so be as honest as you like.)"} </span>
            </div>
            <table class="table">
                <tbody>
                    <tr>
                        <th style="width: 50px"></th>
                        <td>
                        <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                            <span>
                                <p class="text-center" style="margin-top:10px; color: white; font-weight: bold">KNOWLEDGE (OF) </p>
                            </span>
                        </div>
                        <td>
                        <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                            <span>
                                <p class="text-center" style="margin-top:10px; color: white; font-weight: bold">SKILLS (FOR)</p>
                            </span>
                        </div>
                        </td>
                        <td>
                        <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                            <span>
                                <p class="text-center" style="margin-top:10px; color: white; font-weight: bold">ATTRIBUTES (BRING TO) </p>
                            </span>
                        </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                        <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                            <span>
                                <p class="text-center" style=" color: white; font-weight: bold"> INDUSTRY </p>
                            </span>
                        </div>
                        </th>
                        <td>
                        <input type="text" name="inkn1" id="inkn1" value= "${currentMatrix.inkn1!""}" class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="inkn2" id="inkn2" value= "${currentMatrix.inkn2!""}" class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="inkn3" id="inkn3" value= "${currentMatrix.inkn3!""}" class="form-control" placeholder="Item 3"style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                        <td>
                        <input type="text" name="insk1" value= "${currentMatrix.insk1!""}" class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="insk2" value= "${currentMatrix.insk2!""}" class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="insk3" value= "${currentMatrix.insk3!""}" class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                        <td>
                        <input type="text" name="inat1" value= "${currentMatrix.inat1!""}" class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="inat2" value= "${currentMatrix.inat2!""}" class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="inat3" value= "${currentMatrix.inat3!""}" class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                    </tr>
                    <tr>
                        <th>
                        <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                            <span>
                                <p class="text-center" style=" color: white; font-weight: bold"> ORGANISATION </p>
                            </span>
                        </div>
                        </th>
                        <td>
                        <input type="text" name="orkn1" value= "${currentMatrix.orkn1!""}" class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="orkn2" value= "${currentMatrix.orkn2!""}" class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="orkn3" value= "${currentMatrix.orkn3!""}" class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                        <td>
                        <input type="text" name="orsk1" value= "${currentMatrix.orsk1!""}" class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="orsk2" value= "${currentMatrix.orsk2!""}" class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="orsk3" value= "${currentMatrix.orsk3!""}" class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                        <td>
                        <input type="text" name="orat1" value= "${currentMatrix.orat1!""}" class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="orat2" value= "${currentMatrix.orat2!""}" class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="orat3" value= "${currentMatrix.orat3!""}" class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                    </tr>
                    <tr>
                        <th>
                        <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                            <span>
                                <p class="text-center" style=" color: white; font-weight: bold"> ROLE </p>
                            </span>
                        </div>
                        </th>
                        <td>
                        <input type="text" name="rokn1" id="inkn1" value= "${currentMatrix.rokn1!""}"class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="rokn2" class="form-control" value= "${currentMatrix.rokn1!""}" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="rokn3" class="form-control" value= "${currentMatrix.rokn1!""}"placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                        <td>
                        <input type="text" name="rosk1" class="form-control" value= "${currentMatrix.rosk1!""}" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="rosk2" class="form-control" value= "${currentMatrix.rosk2!""}" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="rosk3" class="form-control" value= "${currentMatrix.rosk3!""}" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                        <td>
                        <input type="text" name="roat1" class="form-control" value= "${currentMatrix.roat1!""}" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        <input type="text" name="roat2" class="form-control" value= "${currentMatrix.roat2!""}" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                        <input type="text" name="roat3" class="form-control" value= "${currentMatrix.roat3!""}" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td></td>
                        <td></td>
                        <td>
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
                        [#--  <input style="position: absolute;right: 150px; background-color: grey !important; color: white;font-size: 17px;" type="submit" onclick="return mgnlFormHandleBackButton(this)" value="back">  --]
                            <a href="${cmsfn.link(previousPage)!}" class="btn " role="button" style="
                                        position: absolute;
                                        padding: 10px 20px;
                                        font-size: 18px;
                                        right: 10px;
                                        margin-top: 7px;
                                        width: 200px;
                                        background-color: grey !important; color: white;">Back</a>
                                        </div>
                                <div class="col-sm-3">
                                <input class="btn" type="submit" value="NEXT" style="
                                    background-color: #216478 ! important;
                                    color: #ffffff;
                                    border: none;
                                    padding: 10px 20px;
                                    font-size: 17px;
                                    font-family: Raleway;
                                    cursor: pointer;
                                    width: 200px;
                                ">
                        </div>
                        </div>
                        </td>       
                    </tr>

                </tbody>
            </table>
        </div>

    [#else]

    <div class="tab">
    <span style="font-size: 40px; color: #216478;margin-left: 80px;"> Value Profile Matrix </span>
        <div class="row">
        <span style="font-size: 20px; margin-left: 100px; margin-right: 200px;"> ${content.desc!"Before you begin brie y take a moment to focus on your primary reason for using this program. Keep this reason in mind as you go through the exercises. (Remember this is just of you so be as honest as you like.)"} </span>
        </div>
    <table class="table">
        <tbody>
            <tr>
                <th></th>
                <td>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style="margin-top:10px; color: white; font-weight: bold">KNOWLEDGE (OF) </p>
                    </span>
                </div>
                <td>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style="margin-top:10px; color: white; font-weight: bold">SKILLS (FOR)</p>
                    </span>
                </div>
                </td>
                <td>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style="margin-top:10px; color: white; font-weight: bold">ATTRIBUTES (BRING TO) </p>
                    </span>
                </div>
                </td>
            </tr>
            <tr>
                <th>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style=" color: white; font-weight: bold"> INDUSTRY </p>
                    </span>
                </div>
                </th>
                <td>
                <input type="text" name="inkn1" id="inkn1"  class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="inkn2" id="inkn2"  class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="inkn3" id="inkn3"  class="form-control" placeholder="Item 3"style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
                <td>
                <input type="text" name="insk1"  class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="insk2"  class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="insk3"  class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
                <td>
                <input type="text" name="inat1"  class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="inat2"  class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="inat3"  class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
            </tr>
            <tr>
                <th>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style=" color: white; font-weight: bold"> ORGANISATION </p>
                    </span>
                </div>
                </th>
                <td>
                <input type="text" name="orkn1"  class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="orkn2"  class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="orkn3"  class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
                <td>
                <input type="text" name="orsk1"  class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="orsk2"  class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="orsk3"  class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
                <td>
                <input type="text" name="orat1"  class="form-control" placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="orat2"  class="form-control" placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="orat3"  class="form-control" placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
            </tr>
            <tr>
                <th>
                <div class="row" style="background: #216478;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                    <span>
                        <p class="text-center" style=" color: white; font-weight: bold"> ROLE </p>
                    </span>
                </div>
                </th>
                <td>
                <input type="text" name="rokn1" class="form-control"   placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="rokn2" class="form-control"  placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="rokn3" class="form-control"  placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
                <td>
                <input type="text" name="rosk1" class="form-control"  placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="rosk2" class="form-control"  placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="rosk3" class="form-control"  placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
                <td>
                <input type="text" name="roat1" class="form-control"   placeholder="Item 1" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                <input type="text" name="roat2" class="form-control"   placeholder="Item 2" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                <input type="text" name="roat3" class="form-control"   placeholder="Item 3" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                </td>
            </tr>
            <tr>
                <th></th>
                <td></td>
                <td></td>
                <td>
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
                        <a href="${cmsfn.link(previousPage)!}" class="btn " role="button" style="
                                    position: absolute;
                                    padding: 10px 20px;
                                    font-size: 18px;
                                    right: 10px;
                                    width: 200px;
                                    margin-top: 7px !important;
                                    background-color: grey !important; color: white;">Back</a>
                                    </div>
                            <div class="col-sm-3">
                            <input class="btn" type="submit" value="next" style="
                        background-color: #216478 ! important;
                        color: #ffffff;
                        border: none;
                        width: 200px;
                        padding: 10px 20px;
                        font-size: 17px;
                        font-family: Raleway;
                        cursor: pointer;
                    ">
                    </div>
                </div>
                </td>       
            </tr>

        </tbody>
    </table>
    </div>
    [/#if]
</form>
[#else]
<div class="row" style="text-align: center;">
    <div class="col-sm-12">
        <p style="font-size: 20px;  font-weight: bold;margin-left: 100px;">
        Well done! </p>
    </div>
     <div class="col-sm-12">
        <p style="font-size: 20px; font-weight: bold; margin-left: 100px;">
            You have completed your Value Profile Matrix, and you’re ready for the next step in the program. 
        </p>
    </div>
     <div class="col-sm-12">
        <p style="font-size: 20px; font-weight: bold; margin-left: 100px;">
            Would you like to download a PDF of your completed Value Profile Matrix?
        </p>
    </div>

</div>
<div class="row" style="text-align: center;">
                    <div class="col-sm-4">
                        <a href="${cmsfn.link(previousPage)!}" class="btn " role="button" style="
                                    position: absolute;
                                    padding: 10px 20px;
                                    font-size: 18px;
                                    right: 10px;
                                    width: 200px;
                                    margin-top: 7px !important;
                                    background-color: grey !important; color: white;">Back</a>
                                    </div>
                        <div class="col-sm-4">
                            <input class="btn" onclick="demoLandscapeTextAlign()" type="submit" value="download" style="
                        background-color: #216478 ! important;
                        color: #ffffff;
                        border: none;
                        width: 200px;
                        padding: 10px 20px;
                        font-size: 17px;
                        font-family: Raleway;
                        cursor: pointer;
                         position: absolute;
                        right: 100px;
                    ">
                    </div>
                        <div class="col-sm-4">
                            <a class="btn" href="${cmsfn.link(nextPage)}" onclick="demoLandscapeTextAlign()" type="submit" value="download & next" style="
                        background-color: #216478 ! important;
                        color: #ffffff;
                        border: none;
                        width: 300px;
                        padding: 10px 20px;
                        font-size: 17px;
                        font-family: Raleway;
                        cursor: pointer;
                    "> DOWNLOAD & NEXT </a>
                    </div>
                </div>
[/#if]