[#assign divIDPrefix = def.parameters.divIDPrefix!]
[#assign divClass = def.parameters.divClass!"form"]

[#if divIDPrefix?has_content]
    [#assign divID = ' id="${divIDPrefix}-${content.@id}"']
[/#if]

<div id="login-row" class="row justify-content-center align-items-center" >

[#if actionResult == "go-to-first-page"]
    <div class="text">
        ${i18n.get("form.user.errorMessage.go-to-first-page", [cmsfn.link("website", model.view.firstPage)])}
    </div><!-- end text -->

[#elseif actionResult == "success"]
    <div class="text success">
        <h1>${model.view.successTitle!i18n['form.default.successTitle']}</h1>
        <p>${model.view.successMessage!}</p>
    </div><!-- end text success -->

[#elseif actionResult == "session-expired"]
    [#if content.formTitle?has_content]
        <h1>${content.formTitle}</h1>
    [/#if]

    <div class="text error">
        ${i18n.get("form.user.errorMessage.session-expired", [cmsfn.link("website", model.view.firstPage)])}
    </div><!-- end text error -->

[#elseif actionResult == "failure"]
    [#if content.formTitle?has_content]
        <h1>${content.formTitle}</h1>
    [/#if]

    <div class="text error">
        <ul>
            <li>${model.view.errorMessage}</li>
        </ul>
    </div><!-- end text error -->

[#else]
    [#if model.view.validationErrors?size > 0]
        <div id="formErrorsDisplay" class="text error">
            <h1>${model.view.errorTitle!i18n['form.default.errorTitle']}</h1>
            <ul>
                [#assign keys = model.view.validationErrors?keys]
                [#list keys as key]
                    <li>
                        <a href="#${key}_label">${model.view.validationErrors[key]!}</a>
                    </li>
                [/#list]
            </ul>
        </div><!-- end text error -->
    [/#if]

       <div id="login-column" class="col-md-6">
          <div id="login-box" class="col-md-12">
        <form class="form" id="${content.formName?default("form0")}" method="post" action="" enctype="${def.parameters.formEnctype?default("multipart/form-data")}" >
            <div class="form-item-hidden">
                <input type="hidden" name="mgnlModelExecutionUUID" value="${content.@id}" />
                <input type="hidden" name="field" value="" />
                [#if model.formState?has_content]
                    <input type="hidden" name="mgnlFormToken" value="${model.formState.token!}" />
                [/#if]
                <input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />
            </div><!-- end form-item-hidden -->
                <h3 class="text-center text-info" style="color: #216478 !important; height: 50px"> ${content.title!"REGISTRATION"}</h3>

               <div class="form-group">
                    <input name="username" id="username" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="USERNAME" type="text" value="">
                </div>
                <!-- end class="form-row" -->
               <div class="form-group">
                    <input type="password" name="password" id="password" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="PASSWORD" value="">
                </div>
                <!-- end class="form-row" -->
               <div class="form-group">
                    <input type="password" name="passwordConfirmation" id="passwordConfirmation" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="PASSWORD CONFIRMATION" value="">
                </div>
                <!-- end class="form-row" -->
               <div class="form-group">
                    <input name="email" id="email" autocomplete="off" type="email" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="EMAIL" value="">
                </div>
                <!-- end class="form-row" -->
               <div class="form-group">
                    <input name="fullName" id="fullName" autocomplete="off" type="text" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="FULLNAME" value="">
                </div>
                <!-- end class="form-row" -->
                <div class="button-wrapper">
                    <input type="submit" style="font-size:20px" class="btn btn-info btn-md" value="REGISTER">
                </div>
                <!-- end navigation-button-wrapper -->
        </form>
        </div>
    </div><!-- end form-wrapper -->

[/#if]
</div><!-- end ${divClass} -->
