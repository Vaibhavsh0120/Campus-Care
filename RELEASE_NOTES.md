## Campus Care mobile release

Campus Care connects students and cafeteria staff for campus food ordering.

### Included features

- Student and staff sign-in with role-based access.
- Cafeteria menu browsing, cart, and food ordering.
- Razorpay payment integration.
- Order tracking and order history.
- Staff tools for menu and order management.

### Downloads

- **Android APK:** Download the `.apk` asset and allow installation from your browser or file manager. This release uses the project's existing debug signing configuration; it is intended for direct installation, not Google Play publication.
- **iOS IPA:** Download the `-unsigned.ipa` asset. It is an unsigned iPhoneOS build and requires signing with a compatible sideloading tool before installation. It is not an App Store or TestFlight release.
- **SHA256SUMS.txt:** SHA-256 checksums for both downloads.

### Release automation

- Added the manual **App Release** GitHub Actions workflow to build and publish APK and IPA assets together with these notes and generated commit notes.
- Removed the scheduled Supabase ping workflow.

To publish another version, open **Actions → App Release → Run workflow** and enter a new `vMAJOR.MINOR.PATCH` tag. The workflow uses the existing `SUPABASE_URL`, `SUPABASE_ANON_KEY`, and `RAZORPAY_KEY_ID` repository secrets. Only client-facing credentials are bundled in the app.
