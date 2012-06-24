<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Trote>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

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
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.idTrote }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
