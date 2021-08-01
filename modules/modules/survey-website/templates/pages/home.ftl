<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/survey-website/webresources/css/bootstrap.min.css" /> 
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/jquery-3.3.1.slim.min.js"></script>
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/popper.min.js" ></script>
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/bootstrap.min.js" ></script>

    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <style>
    body {
  margin: 0;
  padding: 0;
  background-color: #17a2b8;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
    * {
      box-sizing: border-box;
    }

    body {
      background-color: #f1f1f1;
    }

    #regForm {
      background-color: #ffffff;
      margin: 100px auto;
      font-family: Raleway;
      padding: 40px;
      width: 70%;
      min-width: 300px;
    }

    h1 {
      text-align: center;  
    }

    input {
      padding: 10px;
      width: 100%;
      font-size: 17px;
      font-family: Raleway;
      border: 1px solid #aaaaaa;
    }

    /* Mark input boxes that gets an error on validation: */
    input.invalid {
      background-color: #ffdddd;
    }

    /* Hide all steps by default: */
    .tab {
      display: none;
    }

    button {
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      padding: 10px 20px;
      font-size: 17px;
      font-family: Raleway;
      cursor: pointer;
    }

    button:hover {
      opacity: 0.8;
    }

    #prevBtn {
      background-color: #bbbbbb;
    }

    /* Make circles that indicate the steps of the form: */
    .step {
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbbbbb;
      border: none;  
      border-radius: 50%;
      display: inline-block;
      opacity: 0.5;
    }

    .step.active {
      opacity: 1;
    }

    /* Mark the steps that are finished and valid: */
    .step.finish {
      background-color: #4CAF50;
    }
    </style>
  </head>
  <body class="home ${cmsfn.language()}">
    <form id="regForm">
     <!-- Circles which indicates the steps of the form: -->
        <div style="text-align:center;margin-top:40px;">
          <span class="step"></span>
          <span class="label">First step</span>
          <span class="step"></span>
          <span class="label">Second step</span>
          <span class="step"></span>
          <span class="label">Third step</span>
          <span class="step"></span>
          <span class="label">Forth step</span>
        </div>
        <h1 style="color: green;">YOUR VALUE PROFILE - KSA</h1>
        <!-- One "tab" for each step in the form: -->

        [@cms.area name="tab1" /]

        [@cms.area name="tab2" /]

        [@cms.area name="tab3" /]

        [@cms.area name="tab4" /]

        [@cms.area name="tab5" /]

        <div class="tab"><span style="font-size: 40px; color: green;"> Value Profile Matrix </span>
          <table class="table">
            <tbody>
                <tr>
                  <th></th>
                  <td> 
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">KNOWLEDGE (OF) </p></span>
                    </div>
                  <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">SKILLS (FOR)</p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">ATTRIBUTES (BRING TO) </p></span>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                      <span> <p class="text-center"> INDUSTRY </p></span>
                    </div>
                  </th>
                  <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                  <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                 <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                </tr>
                 <tr>
                  <th>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                      <span> <p class="text-center"> ORGANISATION </p></span>
                    </div>
                  </th>
                  <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                  <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                 <td>
                      <input type="text" required="false" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                </tr>
                 <tr>
                  <th>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;writing-mode: vertical-lr;height: 200px; text-align: center;display: grid;">
                      <span> <p class="text-center"> ROLE </p></span>
                    </div>
                  </th>
                  <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                  <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                 <td>
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   
                      <input type="text" required="false" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                     
                      <input type="text" class="form-control" placeholder="First name" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">                   

                  </td>
                </tr>
            </tbody>
          </table>
        </div>
        <div class="tab"><span style="font-size: 40px; color: green;"> The impact of your Value Profile </span>
          <div class="row">
            <span style="font-size: 20px; color: green; margin-left: 20px;">ACTIVITY: </span>
          </div>
          <div class="row">
           <span style="font-size: 20px; margin-left: 20px;"> Complete the following three instructions for each of the above items in your “use the least list. </span>
          </div>
          <table class="table">
            <tbody>
              <tr>
                <th></th>
                <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span>
                          <p class="text-center" style="
                            font-size: 40px;
                            ">Q1 </p>
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
                          <p class="text-center">Of all of the items in your entire completed Value Pro le Matrix, which ones do you use in the real world the least?</p>
                      </span>
                    </div>
                </td>
                <td>
                    <div class="row">
                      <span>
                          <p class="text-center" style="
                            font-size: 30px;
                            font-weight: bold;
                            ">Use the least list </p>
                      </span>
                      <select class="form-control form-control-lg" placeholder="Please Choose one item" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">
                        <option hidden >Display but don't show in list</option>
                      </select>
                      <select class="form-control form-control-lg" placeholder="Please Choose one item" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">
                        <option hidden >Display but don't show in list</option>
                      </select>
                      <select class="form-control form-control-lg" placeholder="Please Choose one item" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">
                        <option hidden >Display but don't show in list</option>
                      </select>
                      <select class="form-control form-control-lg" placeholder="Please Choose one item" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">
                        <option hidden >Display but don't show in list</option>
                      </select>
                      <select class="form-control form-control-lg" placeholder="Please Choose one item" style="margin-top: 10px;margin-bottom: 10px; padding: 30px;">
                        <option hidden >Display but don't show in list</option>
                      </select>
                     
                    </div>
                </td>
              </tr>
               
            </tbody>
          </table>
          <table class="table">
            <tbody>
                <tr>
                  <th></th>
                  <td> 
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">Use the least list Item 1 </p></span>
                    </div>
                  <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">Use the least list Item 2</p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">Use the least list Item 3 </p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">Use the least list Item 4 </p></span>
                    </div>
                  </td>
                  <td>
                    <div class="row" style="background: #4CAF50;margin-left: 1px;margin-right: 1px;text-align: center;display: grid;">
                      <span> <p class="text-center">Use the least list Item 5 </p></span>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>
                    <div class="row" style="width: 200px" >
                      <span> <p class="text-center"> 1. Briefly describe the most important advantage/ benefit this KSA item has given YOU in your career. </p></span>
                    </div>
                  </th>
                  <td>
                      <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                 <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                </tr>
                 <tr>
                  <th>
                    <div class="row" style="width: 200px">
                      <span> <p class="text-center"> 2. Briefly describe the most important advantage/ benefit this KSA item has given OTHERS in your career. </p></span>
                    </div>
                  </th>
                  <td>
                      <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                 <td>
                      <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                </tr>
                 <tr>
                  <th>
                     <div class="row" style="width: 200px">
                      <span> <p class="text-center"> 3. Briefly describe the most important advantage/ benefit this KSA item has given ORGANISATIONS in your career. </p></span>
                    </div>
                  </th>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                 <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5">
                     </textarea>                

                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                  <td>
                     <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                  </td>
                </tr>
            </tbody>
          </table>
        </div>
         <div class="tab"><span> The impact of your Value Profile </span>
        </div>
        <div style="overflow:auto;">
          <div style="float:right;">
            <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
            <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
          </div>
        </div>
      </form>

   
  </body>
</html>
