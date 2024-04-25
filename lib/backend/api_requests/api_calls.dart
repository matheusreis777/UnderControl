import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class InserirUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = 'teste@teste.com',
    String? senha = '123456',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$senha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inserir Usuario',
      apiUrl: 'https://lyvpuytxcnfwqcamoyxv.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NomeUsuarioCall {
  static Future<ApiCallResponse> call({
    String? id = '4ca863a2-62d9-406e-80a1-e6492e933c33',
  }) async {
    final ffApiRequestBody = '''
{
  "p_id": "$id"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NomeUsuario',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/nome_usuario',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiBuscarCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiBuscarCep',
      apiUrl: 'https://viacep.com.br/ws/$cep/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? complemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
}

class ApiQuantidadeCaracteresDocumentoCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 2,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiQuantidadeCaracteresDocumento',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/retorno_tamanho_caracteres_documento',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCountTipoColaboradorCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 2,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountTipoColaborador',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_tipo_colaborador',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCountTipoServicoCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 2,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountTipoServico',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_tipo_servico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCountServicoCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountServico',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_servico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCountClienteCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
    String? phoneCliente = '(67) 9 9143-1860',
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId",
  "phone_cliente": "$phoneCliente"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountCliente',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_cliente',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_registros''',
      ));
  static int? cliente(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cliente_id''',
      ));
  static String? nomeCliente(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].nome_cliente''',
      ));
}

class ApiTotalEntradaTrintaDiasCall {
  static Future<ApiCallResponse> call({
    int? idEmpresa = 10,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$idEmpresa"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiTotalEntradaTrintaDias',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/calcular_entrada_servico_ultimos_30_dias',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic totalEntradaTrintaDias(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiTotalSaidaTrintaDiasCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiTotalSaidaTrintaDias',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/calcular_saida_servico_ultimos_30_dias',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic totalSaidaTrintaDias(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiCountServicoDiaCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
    String? dataTexto = '22/04/2024',
  }) async {
    final ffApiRequestBody = '''
{
  "data_filtro": "$dataTexto",
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountServicoDia',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_servico_dia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTotalEntradaPorDiaCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
    String? dataString = '24/04/2024',
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId",
  "filtro_data": "$dataString"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiTotalEntradaPorDia',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/calcular_entrada_servico_por_dia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiTotalSaidaPorDiaCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
    String? dataString = '23/04/2024',
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId",
  "filtro_data": "$dataString"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiTotalSaidaPorDia',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/calcular_saida_servico_por_dia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGrupoServicoDiaCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
    String? dataString = '23/04/2024',
  }) async {
    final ffApiRequestBody = '''
{
  "data_param": "$dataString",
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiGrupoServicoDia',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/grupo_servicos_dia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? total(dynamic response) => (getJsonField(
        response,
        r'''$[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? servico(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao_tipo_servico''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? despesa(dynamic response) => getJsonField(
        response,
        r'''$[:].descricao_tipo_despesa''',
        true,
      ) as List?;
}

class ApiCountTipoDespesaCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountTipoDespesa',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_tipo_despesa',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCountClienteEmpresaCall {
  static Future<ApiCallResponse> call({
    int? empresaId = 10,
  }) async {
    final ffApiRequestBody = '''
{
  "empresa_id_param": "$empresaId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'apiCountClienteEmpresa',
      apiUrl:
          'https://lyvpuytxcnfwqcamoyxv.supabase.co/rest/v1/rpc/count_cliente_empresa',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5dnB1eXR4Y25md3FjYW1veXh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTExMjA4MTEsImV4cCI6MjAyNjY5NjgxMX0.nkOI2whz1sae5PzsBZo3u6F4lBD_OVgaRERxtNsd-0w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
