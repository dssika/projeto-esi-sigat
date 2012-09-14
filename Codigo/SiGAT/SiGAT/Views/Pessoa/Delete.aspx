<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Pessoa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Pessoa</legend>

    <div class="display-label">cnh</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cnh) %>
    </div>

    <div class="display-label">cpf</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cpf) %>
    </div>

    <div class="display-label">nome</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.nome) %>
    </div>

    <div class="display-label">email</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.email) %>
    </div>

    <div class="display-label">dataNascimento</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.dataNascimento) %>
    </div>

    <div class="display-label">endereco</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.endereco.logradouro) %>
    </div>

    <div class="display-label">telefone</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.telefone) %>
    </div>

    <div class="display-label">isPM</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.isPM) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>
