import 'package:cueue/hooks/global/utils/use_intl.dart';
import 'package:cueue/hooks/global/utils/use_route.dart';
import 'package:cueue/model/invitation/invitation_code.dart';
import 'package:cueue/ui/hierarchy/invitation/invitation_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InvitationInputPage extends HookWidget {
  const InvitationInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    final intl = useIntl();
    final pushPage = usePushPage<void>();
    final scrollController = useScrollController();
    final textEditingController = useTextEditingController();
    final isEnableRegistrationButton = useState(false);
    textEditingController.addListener(() {
      isEnableRegistrationButton.value = textEditingController.text.isNotEmpty;
    });
    return Scaffold(
      appBar: AppBar(title: Text(intl.inputInvitationCode)),
      body: Scrollbar(
        controller: scrollController,
        child: ListView(
          controller: scrollController,
          padding: const EdgeInsets.all(32),
          children: [
            Text(textAlign: TextAlign.center, intl.pleaseInputInvitationCode),
            const SizedBox(height: 32),
            TextField(
              controller: textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: intl.invitationCode, alignLabelWithHint: true, border: const OutlineInputBorder()),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: isEnableRegistrationButton.value ? () => pushPage.trigger(InvitationInfoPage(InvitationCode(textEditingController.text))) : null,
              child: Text(intl.confirmInvitationCode),
            ),
          ],
        ),
      ),
    );
  }
}
