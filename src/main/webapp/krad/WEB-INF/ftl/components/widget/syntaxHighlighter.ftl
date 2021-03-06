<#--

    Copyright 2005-2013 The Kuali Foundation

    Licensed under the Educational Community License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.opensource.org/licenses/ecl2.php

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<#--
Create pre tags containing the text to highlight adding the css class used by the plugin

-->
<#macro uif_syntaxHighlighter widget >

    <div id="${widget.id}" class="uif-syntaxHighlighter">
        <#if widget.header?has_content>
            <@krad.template component=widget.header/>
        </#if>
        <div>
            <pre class="${widget.pluginCssClass}">
                <#if widget.sourceCode?has_content>
                    ${widget.sourceCode}
                </#if>
            </pre>
        </div>
    </div>

    <@krad.script value="prettyPrint();" />
</#macro>


