<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Veiculo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Veiculo</legend>

    <div class="display-label">renavan</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.renavan) %>
    </div>

    <div class="display-label">placa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.placa) %>
    </div>

    <div class="display-label">marca</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.marca) %>
    </div>

    <div class="display-label">modelo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.modelo) %>
    </div>

    <div class="display-label">anoFabricacao</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.anoFabricacao) %>
    </div>

    <div class="display-label">tipo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tipo) %>
    </div>

    <div class="display-label">pessoa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.pessoa.nome) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>
