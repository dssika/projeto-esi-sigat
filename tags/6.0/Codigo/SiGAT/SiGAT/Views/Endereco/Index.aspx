<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SiGAT.Models.Endereco>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
   Endereço
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Endereço</h2>

<p>
    <%: Html.ActionLink("Cadastrar novo", "Create") %>
</p>
<table>
    <tr>
        <th>
            Logradouro
        </th>
        <th>
            Bairro
        </th>
        <th>
            CEP
        </th>
        <th>
            Cidade
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.logradouro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.bairro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cep) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.cidade.nome) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.idEndereco }) %> |
            <%: Html.ActionLink("Detalhes", "Details", new { id=item.idEndereco }) %> |
            <%: Html.ActionLink("Excluir", "Delete", new { id=item.idEndereco }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
