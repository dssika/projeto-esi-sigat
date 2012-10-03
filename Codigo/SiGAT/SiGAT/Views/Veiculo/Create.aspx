<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Veiculo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastrar Veículo</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Veículo</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.renavan, "Renavan") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.renavan) %>
            <%: Html.ValidationMessageFor(model => model.renavan) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.placa, "Placa") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.placa) %>
            <%: Html.ValidationMessageFor(model => model.placa) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.marca, "Marca") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.marca) %>
            <%: Html.ValidationMessageFor(model => model.marca) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.modelo, "Modelo") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.modelo) %>
            <%: Html.ValidationMessageFor(model => model.modelo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.anoFabricacao, "Ano de Fabricação") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.anoFabricacao) %>
            <%: Html.ValidationMessageFor(model => model.anoFabricacao) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.tipo, "Tipo") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.tipo) %>
            <%: Html.ValidationMessageFor(model => model.tipo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idProprietario, "Proprietário") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idProprietario", "Selecione uma pessoa") %>
            <%: Html.ValidationMessageFor(model => model.idProprietario) %>
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
