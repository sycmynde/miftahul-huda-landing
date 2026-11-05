# CASE STUDY — AI Marketplace Assistant "Siti" (Local/On-Premise)

## Ringkasan (1 paragraf, untuk portofolio/Upwork/GBP)
Sistem asisten AI lokal bernama "Siti" yang berjalan 24/7 pada PC dedicated di tempat klien. Siti menangani alur percakapan marketplace: menerima order belanja, menerima bukti/struk transaksi, memverifikasi, dan membantu hingga tahap pengajuan deal. Kontrol akhir (persetujuan transaksi, pemeriksaan bukti, pengecekan barang, jumlah kirim, keputusan pengiriman) tetap pada admin (human-in-the-loop). Data tidak keluar dari perangkat klien.

## Masalah yang diselesaikan
- Admin marketplace kewalahan merespons order & verifikasi bukti transaksi secara manual 24/7.
- Risiko kesalahan manusia pada verifikasi struk dan jumlah barang.
- Kebutuhan respons natural (tidak terasa bot) agar pembeli nyaman.

## Solusi
- Asisten AI lokal (on-premise) dengan persona dan aturan percakapan yang dirancang untuk interaksi natural.
- Ritme respons diatur (jeda mengetik & jeda pengiriman pesan) agar tidak terasa keluaran mesin instan.
- Alur order → bukti → verifikasi → pengajuan deal, dengan checkpoint persetujuan manusia.
- Berjalan 24/7 pada PC dedicated, GPU XT9060TX, ROCm, konfigurasi undervolt.

## Stack teknis
Python, Ollama, GGUF/Llama, ROCm, GPU XT9060TX (undervolt), human-in-the-loop workflow, integrasi alur pesanan.

## Hasil / nilai
- Respons order & verifikasi bukti tersedia 24/7 tanpa admin standby.
- Admin fokus ke keputusan (approve/reject), bukan tugas repetitif.
- Data transaksi & percakapan tetap di perangkat klien (privasi & kontrol penuh).
- Ritme respons natural → pengalaman pembeli lebih baik.

## Catatan penggunaan di portofolio
- Jangan sebut nama klien tanpa izin.
- Sebut sebagai "AI marketplace assistant untuk klien e-commerce" + stack + hasil.
- Screenshot: blur data pembeli, nomor order, nama toko.

## Versi singkat (untuk Upwork portfolio / GBP post)
"Built and operate a 24/7 on-premise AI marketplace assistant (named Siti) that handles shopping orders, receipt verification, and deal submission with human-in-the-loop approval. Runs on a dedicated PC with GPU XT9060TX + ROCm (undervolted). Data stays on the client's device. Stack: Python, Ollama, GGUF/Llama."