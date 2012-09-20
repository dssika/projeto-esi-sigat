<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Trote>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Trote</legend>

    <div class="display-label">data</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.data) %>
    </div>

    <div class="display-label">telfoneRequisitante</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.telfoneRequisitante) %>
    </div>

    <div class="display-label">deslocouViatura</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.deslocouViatura) %>
    </div>

    <div class="display-label">endereco</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.endereco.logradouro) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>
