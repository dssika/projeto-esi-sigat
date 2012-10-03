<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Pessoa>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Pessoa</h2>

<p>
    <%: Html.ActionLink("Cadastrar", "Create") %>
</p>
<table>
    <tr>
        <th>
            CNH
        </th>
        <th>
            CPF
        </th>
        <th>
            Nome
        </th>
        <th>
            Email
        </th>
        <th>
            Data de Nascimento
        </th>
        <th>
            Endereço
        </th>
        <th>
            Telefone
        </th>
        <th>
            É Policial Militar?
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.cnh) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cpf) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.nome) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.email) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.dataNascimento) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.endereco.logradouro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.telefone) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.isPM) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.idPessoa }) %> |
            <%: Html.ActionLink("Detalhes", "Details", new { id=item.idPessoa }) %> |
            <%: Html.ActionLink("Excluir", "Delete", new { id=item.idPessoa }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
