import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlclientgenaration {
  static late GraphQLClient graphQLClient;
  GraphQlclientgenaration.init() {
    final HttpLink httpLink = HttpLink(
        'https://superb-kingfish-50.hasura.app/v1/graphql',
        defaultHeaders: {
          'x-hasura-admin-secret':
              'VoVwQXGECiXEA9diYmh7uBW4sMmyIgA9HtzSdm8aYu1Fu8PrOJT1vy8RqNLC1EEe',
          'Content-Type': 'application/json'
        });
    graphQLClient = GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(),
        defaultPolicies: DefaultPolicies());
  }
}
