﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<SiGAT.Models.Pessoa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cadastro
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cadastrar</h2>

<script type="text/javascript">

     $(document).ready(function () {
         $("#Sigla").change(function () {
             var id = $(this).val();
             $.getJSON('<%= Url.Action("ListaCidade") %>/' + id, function (cids) {
                 var html = "";
                 $.each(cids, function (index, item) {
                     html += ("<option value='" + item.IdCidade + "'>" + item.Nome + "</option>");
                 });
                 $("#Cidades").html(html);
             });
         });
     });

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Envolvido</legend>

        <fieldset>
        <legend>Dados</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.nome) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.nome) %>
            <%: Html.ValidationMessageFor(model => model.nome) %>
        </div>

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
        </fieldset>
        <fieldset>
        <legend>Endereço</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.logradouro) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endereco.logradouro) %>
            <%: Html.ValidationMessageFor(model => model.endereco.logradouro)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.bairro)%>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endereco.bairro)%>
            <%: Html.ValidationMessageFor(model => model.endereco.bairro)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.cep)%>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.endereco.cep)%>
            <%: Html.ValidationMessageFor(model => model.endereco.cep)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.cidade.idEstado, "Estado")%>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idEstado", "Selecione um estado")%>
            <%: Html.ValidationMessageFor(model => model.endereco.cidade.idEstado)%>
        </div>
        
        <div class="editor-label">
            <%: Html.LabelFor(model => model.endereco.idCidade, "Cidade")%>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("idCidade", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.endereco.idCidade)%>
        </div>
    </fieldset>
    <fieldset>
        <legend>Telefone</legend>
        <div class="editor-label">

        <%: Html.LabelFor(model => model.telefone) %>
        </div>
        <div class="editor-field">
            </div>
            <!--   mudança 26-08
            %: Html.LabelFor(model => model.ddd) %>
        </div-->
        <div class="editor-field">
             <%: Html.DropDownList("idTelefone", String.Empty)%>
            <!--%: Html.ValidationMessageFor(model => model.ddd) %-->
        </div>

        <div class="editor-label">
            <!--%: Html.LabelFor(model => model.numero) %-->
        </div>
        <div class="editor-field">
            <!--%: Html.EditorFor(model => model.numero) %-->
            <!--%: Html.ValidationMessageFor(model => model.numero) %-->
        </div>
    </fieldset>

    <fieldset>
        <legend>PM</legend>
    
        <div class="editor-label">
            <!--%: Html.LabelFor(model => model.isPM, String.Empty) %-->
        </div>
        <div class="editor-field">
            <!--%: Html.EditorFor(model => model.isPM) %-->
            
        <%: Html.RadioButtonFor(model => model.isPM, true) %> sim <br />
        <%: Html.RadioButtonFor(model => model.isPM, false) %> não
            <%: Html.ValidationMessageFor(model => model.isPM) %>
        </div>
        </fieldset>
        <p>
            <input type="submit" value="Cadastrar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index") %>
</div>

</asp:Content>
