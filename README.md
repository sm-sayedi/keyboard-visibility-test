# keyboard_visibility_test

A flutter project for testing [keyboard-visibility](https://github.com/sm-sayedi/flutter/tree/keyboard-visibility) branch.

## Setup
 - Pull the [branch](https://github.com/sm-sayedi/flutter/tree/keyboard-visibility) locally.
 - Generate a local engine build by following the Flutter [engine_tool](https://github.com/flutter/flutter/tree/main/engine/src/flutter/tools/engine_tool) guide.
 - Edit `pubspec.yaml` to point to a locally built engine under `dependency_overrides`.
 - Run the app using a locally built engine, e.g, using the following command:
   ```
   flutter run -d "emulator-5554" --local-engine=android_debug_arm64 --local-engine-host=host_debug_unopt_arm64
   ```

## Screen recordings

<table>
<tr>
 <th> Before
 <th> After
<tr>
 <td> <video src="https://github.com/user-attachments/assets/7560ffc8-2fa6-48c9-8918-0d2a56db11bc" />
 <td> <video src="https://github.com/user-attachments/assets/3c654508-284d-45a5-89bc-ac43a2efdd56" />
</table>
