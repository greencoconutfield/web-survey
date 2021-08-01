[#assign skipBackground = false /]
[#if content.skipBackground?has_content]
   [#assign skipBackground = content.skipBackground /]
[/#if]
<style>
.bg-img {
  [#if !skipBackground]
  background-color: #216478;
  [/#if]
  min-height: 780px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.form {
  margin-top: 200px;
  border-radius: 25px;
  right: 0;
  margin: 20px;
  padding: 16px;
  background-color: white;
}

</style>
<div class="bg-img ">
    [#list components as component ]
        [@cms.component content=component /]
    [/#list]
</div>
