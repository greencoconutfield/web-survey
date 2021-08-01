<div id="login-row" class="row justify-content-center align-items-center" style="font-size:20px">
    [#if "anonymous" == ctx.user.name || cmsfn.editMode]
        [#assign requiredLabel = content.requiredLabel!i18n['template.login.required']!]
        [#assign requiredCharacter = content.requiredCharacter!i18n['template.login.required.character']!]
        [#if content.text?has_content]<div class="text">${content.text}</div>[/#if]
        <br>
        <div id="login-column" style="margin-top: 150px" class="col-md-6">
          <div id="login-box" class="col-md-12">
            <form id="loginForm" class="form" autocomplete="off" method="post" enctype="application/x-www-form-urlencoded">
                [#if content.realm?has_content]
                    <input type="hidden" name="mgnlRealm" value="${content.realm!'public'}"/>
                [/#if]

                <input type="hidden" name="mgnlModelExecutionUUID" value="${content.@uuid}"/>
                [#if content.targetPage?has_content]
                    <input type="hidden" name="mgnlReturnTo" value="${cmsfn.link("website", content.targetPage)!}"/>
                [/#if]

                ${ctx.response.setHeader("Cache-Control", "no-cache")}
                <input type="hidden" name="csrf" value="${ctx.getAttribute('csrf')!''}" />

                [#--  <p class="required"><span>${requiredCharacter}</span> ${requiredLabel}</p>  --]
                <h3 class="text-center text-info" style="color: #216478 !important; height: 50px"> ${content.title!"LOGIN"}</h3>

                <div class="form-group">
                    <input required="required" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="USERNAME" class="form-control" type="text" id="username" name="mgnlUserId" value="" maxlength="50"/>

                </div>
                <div class="form-group">
                    <input required="required" style="font-size:20px; color: #216478 !important; height: 70px" autocomplete="off" placeholder="PASSWORD" class="form-control" type="password" name="mgnlUserPSWD" id="mgnlUserPSWD" value=""/>
                </div>

                <div class="form-group row">
                    [#if content.registrationPage?has_content]<a  href="${cmsfn.link("website", content.registrationPage)!}" class="text-info col-md-6" style="color: #216478 !important">${i18n['template.login.registrationPageLink']}</a> [/#if]

                    [#if content.forgottenPasswordPage?has_content]<a href="${cmsfn.link("website", content.forgottenPasswordPage!)!}" class="text-info col-md-6 text-right" style="color: #216478 !important">${i18n['template.login.forgottenPasswordPageLink']}</a>[/#if]
                </div>

                    <div class="button-wrapper">
                        <fieldset class="buttons">
                            <input type="submit" style="font-size:20px; background-color: #216478;" class="btn btn-info btn-md" accesskey="s"
                                   value="${i18n['template.login.submit.label']}"/>
                        </fieldset>
                    </div>
                [#if ctx.mgnlLoginError.loginException?has_content]
                    <div class="loginError">
                        <p style="color: red">${ctx.mgnlLoginError.loginException.message}</p>
                    </div>
                [/#if]
            </form>
          </div>
        </div><!-- end form-wrapper -->
    [/#if]
    [#if "anonymous" != ctx.user.name || cmsfn.editMode]
        <div class="text" style="margin-top: 200px;font-size: 30px;color: white;">
            ${i18n.get('template.login.welcome', [ctx.user.name])}
        <a href="${cmsfn.link(cmsfn.page(content))!}?mgnlLogout=true">${i18n['template.login.submit.logout.label']}</a>
        </div>
    [/#if]

   
</div>
