<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Endereco>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Editar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Editar</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Endereço</legend>

        <%: Html.HiddenFor(model => model.idEndereco) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.logradouro) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.logradouro) %>
            <%: Html.ValidationMessageFor(model => model.logradouro) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.bairro) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.bairro) %>
            <%: Html.ValidationMessageFor(model => model.bairro) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cep) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cep) %>
            <%: Html.ValidationMessageFor(model => model.cep) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idCidade, "Cidade") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCidade", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idCidade) %>
        </div>

        <p>
            <input type="submit" value="Salvar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index") %>
</div>

</asp:Content>
