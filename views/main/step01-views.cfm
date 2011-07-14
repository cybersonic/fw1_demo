        <h1>Step 1 - View<span></span></h1> 
        <div id="post"> 
          <div class="post" id="post-4"> 
            <h2>FW/1 - URL convention</h2>
            <p>
              <code>index.cfm?action=main.default</code>
              <ul>
                <li><strong>action</strong> = action (event | fuseaction)</li>
                <li><strong>section</strong> = main</li>
                <li><strong>item</strong> = default</li>
              </ul>
            </p>

            <h2>FW/1 - File Structure</h2>
            <p>
              <ul>
                <li>/
                <ul>
                  <li>Application.cfc</li>
                  <li>index.cfm</li>
                  <li>/views
                    <ul>
                      <li>/main &lt;&ndash; <strong>section</strong>
                        <ul>
                          <li>default.cfm &lt;&ndash; <strong>item</strong></li>
                        </ul>  
                      </li>
                    </ul>
                    </li>
                  </ul>  
                </li>
              </ul>
              <code>eg >http://localhost/index.cfm?action=main.step1-view</code>
            </p>
            
            <p>Next: <a href="/index.cfm?action=demo:main.step02a">Layouts</a></p>