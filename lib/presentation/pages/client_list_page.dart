import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/client/create_client.dart';
import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/infrastructure/operation_result.dart';
import 'package:practice_v2/presentation/components/button_state.dart';
import 'package:practice_v2/presentation/components/custom_tooltip.dart';

@RoutePage()
class ClientListPage extends HookConsumerWidget {
  const ClientListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonStateNew = useState(ButtonState.initial);
    final clientBTSList = ref.watch(clientListeStreamProvider);

    final GlobalKey iconKey = GlobalKey();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
            message: 'Client List Page',
            child: const Text('Client List Page'),
          ),
          Builder(
            builder: (context) => IconButton(
              key: iconKey,
              onPressed: () {
                showCustomTooltip(
                  tooltipVerticalPosition: TooltipVerticalPosition.bottom,
                  context: context,
                  parentKey: iconKey,
                  tooltipText:
                      'Lorem Ipsum, loream ipsum, this is a test to see if everything works',
                  // imageWidget:
                  //     'https://miro.medium.com/v2/resize:fit:1400/0*V4nWrrJPAxCCbUkM.gif',
                );
              },
              icon: Icon(Icons.info),
            ),
          ),
          SizedBox(
            height: 400,
            width: 500,
            child: clientBTSList.when(
              data: (clients) {
                return ListView.builder(
                    itemCount: clients.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(clients[index].name),
                        onTap: () {
                          context.router.push(
                            ClientRoute(clientId: clients[index].id),
                          );
                        },
                        trailing: IconButton(
                          onPressed: () {
                            ref
                                .watch(clientRepositoryProvider)
                                .deleteClient(clients[index].id);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    });
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text(error.toString()),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // ref
              //     .watch(clientRepositoryProvider)
              //     .createClient(CreateClient(name: 'Jordan'));
              _showClientNameModal(context);
            },
            child: const Text('Add Client'),
          ),
          StatefulButton(
            state: buttonStateNew.value,
            onPressed: () async {
              buttonStateNew.value = ButtonState.loading;

              final result = await ref
                  .watch(clientRepositoryProvider)
                  .createClient(CreateClient(name: 'Elon Musk'));

              switch (result) {
                case CreationSuccess():
                  buttonStateNew.value = ButtonState.success;

                case CreationException():
                  buttonStateNew.value = ButtonState.loading;
              }
              await Future.delayed(const Duration(seconds: 1));
              buttonStateNew.value = ButtonState.initial;
            },
            label: 'Test',
          ),
        ],
      ),
    );
  }
}

void _showClientNameModal(BuildContext context) {
  String clientName = '';

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        title: Text('Enter Client Name'),
        content: TextField(
          onChanged: (value) {
            clientName = value;
          },
          decoration: InputDecoration(hintText: "Client Name"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              print('Client Name: $clientName');
              Navigator.of(context).pop();
            },
            child: Text('Submit'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        ],
      );
    },
  );
}
