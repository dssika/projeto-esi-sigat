<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Endereco>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Endereco</legend>

    <div class="display-label">logradouro</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.logradouro) %>
    </div>

    <div class="display-label">bairro</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.bairro) %>
    </div>

    <div class="display-label">cep</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cep) %>
    </div>

    <div class="display-label">cidade</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cidade.nome) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>
