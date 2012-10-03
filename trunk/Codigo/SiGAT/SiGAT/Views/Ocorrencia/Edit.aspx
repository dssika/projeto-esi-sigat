<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.ocorrencia>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Editar</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Ocorrência</legend>

        <%: Html.HiddenFor(model => model.idOcorrencia) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.data) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.data) %>
            <%: Html.ValidationMessageFor(model => model.data) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.gravidade) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.gravidade) %>
            <%: Html.ValidationMessageFor(model => model.gravidade) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.possuiVitimas) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.possuiVitimas) %>
            <%: Html.ValidationMessageFor(model => model.possuiVitimas) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idEndereco, "Endereço") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEndereco", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idEndereco) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idCondicaoTempo, "Condição do tempo") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCondicaoTempo", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idCondicaoTempo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idCondicaoVia, "Condição da via") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCondicaoVia", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idCondicaoVia) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idSinalizacaoVia, "Via sinalizada?") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idSinalizacaoVia", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idSinalizacaoVia) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.idTipoOcorrencia, "Tipo de Ocorrência") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idTipoOcorrencia", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.idTipoOcorrencia) %>
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
