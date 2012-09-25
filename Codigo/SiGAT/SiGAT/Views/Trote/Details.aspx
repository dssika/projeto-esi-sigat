<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Trote>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Detalhes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Detalhes</h2>

<fieldset>
    <legend>Trote</legend>

    <div class="display-label">Data</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.data) %>
    </div>

    <div class="display-label">Telfone do Requisitante</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.telfoneRequisitante) %>
    </div>

    <div class="display-label">Deslocou a Viatura?</div>
    <div class="display-field">
            <%: Html.RadioButtonFor(model => model.deslocouViatura, true) %> sim <br />
            <%: Html.RadioButtonFor(model => model.deslocouViatura, false)%> não
            <%: Html.ValidationMessageFor(model => model.deslocouViatura)%>
        </div>

    <div class="display-label">Endereço</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.endereco.logradouro) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Editar", "Edit", new { id=Model.idTrote }) %> |
    <%: Html.ActionLink("Voltar", "Index") %>
</p>

</asp:Content>
