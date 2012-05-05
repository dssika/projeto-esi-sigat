<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Pessoa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Pessoa</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cnh) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cnh) %>
            <%: Html.ValidationMessageFor(model => model.cnh) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.cpf) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.cpf) %>
            <%: Html.ValidationMessageFor(model => model.cpf) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.nome) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.nome) %>
            <%: Html.ValidationMessageFor(model => model.nome) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.email) %>
            <%: Html.ValidationMessageFor(model => model.email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.dataNascimento) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.dataNascimento) %>
            <%: Html.ValidationMessageFor(model => model.dataNascimento) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idEndereco, "endereco") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEndereco", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idEndereco) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idTelefone, "telefone") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idTelefone", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idTelefone) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.isPM) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.isPM) %>
            <%: Html.ValidationMessageFor(model => model.isPM) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
