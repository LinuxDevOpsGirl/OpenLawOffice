﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/SiteNoRightBar.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OpenLawOffice.WebClient.ViewModels.Matters.MatterViewModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Matters
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server"> 
    <h2>Matters<a id="pageInfo" class="btn-question" style="padding-left: 15px;">Help</a></h2>

    
    <div class="options_div">
        <div style="width: 200px; display: inline;">
            Active: 
            <select id="activeSelector">
                <option value="active">Active</option>
                <option value="inactive">Inactive</option>
                <option value="both">Both</option>
            </select>

            <script language="javascript">
                var vars = [], hash;
                var q = document.URL.split('?')[1];
                if (q != undefined) {
                    q = q.split('&');
                    for (var i = 0; i < q.length; i++) {
                        hash = q[i].split('=');
                        vars.push(hash[1]);
                        vars[hash[0]] = hash[1];
                    }
                }
                $(document).ready(function () {
                    if (vars['active'] != null)
                        $('#activeSelector').val(vars['active']);
                    if (vars['contactFilter'] != null)
                        $('#contactFilter').val(decodeURIComponent(vars['contactFilter']));
                    $("#activeSelector").change(function () {
                        go();
                    });
                    $('#contactFilterGo').click(function () {
                        go();
                    });
                    $('#contactFilter').focus(function () {
                        $('#contactFilter').val('');
                    });
                    $('#contactFilter').keyup(function (e) {
                        if (e.keyCode == 13) go();
                    });
                    $('#contactFilter').autocomplete({
                        source: "/Contacts/ListDisplayNameOnly",
                        minLength: 2,
                        focus: function (event, ui) {
                            $("#contactFilter").val(ui.item.DisplayName);
                            return false;
                        },
                        select: function (event, ui) {
                            $("#contactFilter").val(ui.item.DisplayName);
                            go();
                            return false;
                        }
                    }).data("ui-autocomplete")._renderItem = function (ul, item) {
                        return $("<li>")
                            .append("<a>" + item.DisplayName + "</a>")
                            .appendTo(ul);
                    };
                });
                function go() {
                    var contactFilter = $('#contactFilter').val().trim();
                    var base;
                    var qMarkAt = window.location.href.lastIndexOf('?');
                    $('#contactFilterGo').attr('disabled', 'disabled');
                    if (qMarkAt > 0)
                        base = window.location.href.substr(0, qMarkAt);
                    else
                        base = window.location.href;
                    if (contactFilter.length > 0)
                        window.location.href = base + '?active=' + $("#activeSelector").val() + '&contactFilter=' + contactFilter;
                    else
                        window.location.href = base + '?active=' + $("#activeSelector").val();
                };
            </script>
        </div>
        <div style="width: 200px; display: inline;">
            Contact: <input type="text" id="contactFilter" name="contactFilter" value="" /><input id="contactFilterGo" type="button" value="Go" />
        </div>
    </div>

    <table class="listing_table">
        <tr>
            <th style="text-align: center;">
                Title
            </th>
            <th style="text-align: center;">
                Synopsis
            </th>
            <th style="text-align: center; width: 25px;">
                
            </th>
        </tr>
        <% bool altRow = true; 
           foreach (var item in Model)
           { 
               altRow = !altRow;
               if (altRow)
               { %> <tr class="tr_alternate"> <% }
               else
               { %> <tr> <% }
                %>
            <td>
                <%: Html.ActionLink(item.Title, "Details", "Matters", new { id = item.Id.Value }, null) %>
            </td>
            <td>
                <%: item.Synopsis %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", "Matters", new { id = item.Id.Value }, new { @class = "btn-edit", title = "Edit" })%>
            </td>
        </tr>
        <% } %>
    </table>
    
    <div id="pageInfoDialog" title="Help">
        <p>
        <span style="font-weight: bold; text-decoration: underline;">Info:</span>
        A matter is a substantial or essential thing.  They contain documents, notes, time entries and more.<br /><br />
        <span style="font-weight: bold; text-decoration: underline;">Usage:</span> 
        The arrow to the left of the title allows for expanding to view submatters (matters within matters).  
        Clicking the title will show the details of the matter including access to documents, tasks, notes and more.  
        Click the <img src="../../Content/fugue-icons-3.5.6/icons-shadowless/pencil.png" /> (edit icon) to make changes to the matter.
        </p>
    </div>
</asp:Content>