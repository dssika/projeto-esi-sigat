<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Telefone>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Telefone</legend>

    <div class="display-label">pessoa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.pessoa.nome) %>
    </div>

    <div class="display-label">ddd</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ddd) %>
    </div>

    <div class="display-label">numero</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.numero) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.idTelefone }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
