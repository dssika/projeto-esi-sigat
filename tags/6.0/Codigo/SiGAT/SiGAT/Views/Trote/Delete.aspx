
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Trote>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Excluir
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Excluir</h2>

<h3>Confirma Exclusão?</h3>
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
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Excluir" /> |
        <%: Html.ActionLink("Voltar", "Index") %>
    </p>
<% } %>

</asp:Content>
