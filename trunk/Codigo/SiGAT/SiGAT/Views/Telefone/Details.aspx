<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Telefone>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Detalhes</h2>

<fieldset>
    <legend>Telefone</legend>

    <div class="display-label">Pessoa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.pessoa.nome) %>
    </div>

    <div class="display-label">DDD</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ddd) %>
    </div>

    <div class="display-label">Numero</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.numero) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Editar", "Edit", new { id=Model.idTelefone }) %> |
    <%: Html.ActionLink("Voltar", "Index") %>
</p>

</asp:Content>
