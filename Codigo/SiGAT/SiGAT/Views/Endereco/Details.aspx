<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Endereco>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Detalhes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Detalhes</h2>

<fieldset>
    <legend>Endereço</legend>

    <div class="display-label">Logradouro</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.logradouro) %>
    </div>

    <div class="display-label">Bairro</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.bairro) %>
    </div>

    <div class="display-label">CEP</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cep) %>
    </div>

    <div class="display-label">Cidade</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.cidade.nome) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Editar", "Edit", new { id=Model.idEndereco }) %> |
    <%: Html.ActionLink("Voltar", "Index") %>
</p>

</asp:Content>
