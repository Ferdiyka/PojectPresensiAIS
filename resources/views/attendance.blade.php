<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Absensi</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="bg-gray-100 flex items-center justify-center min-h-screen">

    <div class="w-full max-w-lg p-6 bg-white shadow-lg rounded-lg relative">
        <h1 class="text-2xl font-bold text-center mb-4">Presensi di
            <span id="gate-name" class="text-blue-500 relative inline-block">
                <span class="cursor-pointer" id="selected-pos">Pos 1</span>
                <div class="hidden absolute z-10 mt-2 w-32 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5"
                    id="dropdown-menu">
                    <div class="py-1" role="menu" aria-orientation="vertical" aria-labelledby="options-menu">
                        <a href="#"
                            class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                            role="menuitem" data-value="Pos 1">Pos 1</a>
                        <a href="#"
                            class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                            role="menuitem" data-value="Pos 2">Pos 2</a>
                        <a href="#"
                            class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                            role="menuitem" data-value="Pos 3">Pos 3</a>
                    </div>
                </div>
            </span>
        </h1>

        <p class="text-center text-gray-700 mb-6">Silakan scan ID Card atau masukkan Code Anda</p>

        <div class="mb-4">
            <input type="text" id="code" placeholder="Masukkan Code"
                class="w-full p-2 border border-gray-300 rounded-lg">
        </div>
        <p id="error-message" class="text-red-500 font-medium mt-2 text-center hidden"></p>

        <div id="result" class="hidden mt-8">
            <div class="bg-white shadow-md rounded-lg overflow-hidden">
                <!-- Nama di Tengah -->
                <div class="col-span-1 text-center pt-2 mb-4">
                    <h2 id="user-name" class="text-2xl font-bold text-gray-800"></h2>
                    <p id="user-group" class="text-sm text-gray-600"></p>
                </div>
                <div class="grid grid-cols-2 gap-4 pl-6 pr-6 pb-6 items-center">
                    <!-- Kolom Kiri -->
                    <div class="col-span-1">
                        <div class="mb-4">
                            <p class="text-sm font-medium text-gray-500">Tanggal</p>
                            <p id="user-date" class="text-lg text-gray-800"></p>
                        </div>
                        <div class="mb-4">
                            <p class="text-sm font-medium text-gray-500">Waktu</p>
                            <p id="user-time" class="text-lg text-gray-800"></p>
                        </div>
                        <div>
                            <p class="text-sm font-medium text-gray-500">Status</p>
                            <p id="user-state" class="text-lg font-semibold text-green-600"></p>
                        </div>
                    </div>

                    <!-- Kolom Kanan -->
                    <div class="flex justify-center items-center">
                        <img id="user-photo" alt="User Photo"
                            class="w-40 h-40 object-cover object-center rounded-lg">
                    </div>
                </div>
            </div>
            <p id="message" class="text-green-500 font-medium mt-4 text-center"></p>
        </div>

        <!-- Logs Button -->
        <button id="logs-button" class="fixed bottom-4 left-4 bg-blue-500 text-white px-4 py-2 rounded-lg shadow-md">
            Logs
        </button>
    </div>

    <!-- Logs Modal -->
    <!-- Logs Modal -->
<div id="logs-modal" class="fixed inset-0 bg-gray-800 bg-opacity-75 flex items-center justify-center z-50 hidden">
    <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-4xl h-4/5 flex flex-col">
        <h2 class="text-2xl font-bold mb-4">Attendance Logs</h2>
        <div class="flex-1 overflow-y-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Code</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Gate</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Group</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Time</th>
                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">State</th>
                    </tr>
                </thead>
                <tbody id="logs-table-body" class="bg-white divide-y divide-gray-200">
                    <!-- Data logs akan dimuat di sini -->
                </tbody>
            </table>
        </div>
        <button id="close-logs" class="mt-4 bg-red-500 text-white px-4 py-2 rounded-lg shadow-md">
            Close
        </button>
    </div>
</div>


    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            // Toggle dropdown on click
            $('#selected-pos').click(function(e) {
                e.stopPropagation();
                $('#dropdown-menu').toggleClass('hidden');
            });

            // Close dropdown when clicking outside
            $(document).click(function() {
                $('#dropdown-menu').addClass('hidden');
            });

            // Update selected Pos
            $('#dropdown-menu a').click(function(e) {
                e.preventDefault();
                $('#selected-pos').text($(this).data('value'));
                $('#dropdown-menu').addClass('hidden');
            });

            $('#code').on('keypress', function(e) {
                if (e.which == 13) {
                    const code = $('#code').val();
                    const gate = $('#selected-pos').text();

                    $.ajax({
                        url: '/absen',
                        method: 'POST',
                        data: {
                            code: code,
                            gate: gate
                        },
                        success: function(data) {
                            $('#error-message').addClass('hidden');
                            $('#result').addClass('hidden');

                            if (data.error) {
                                $('#error-message').text("Code yang dimasukkan salah").removeClass('hidden');
                            } else {
                                $('#user-photo').attr('src', '/photos/' + data.photo);
                                $('#user-name').text(data.name);
                                $('#user-group').text(data.group);
                                $('#user-date').text(data.date);
                                $('#user-time').text(data.time);
                                $('#user-state').text(data.state);
                                $('#message').text(data.message).removeClass('text-red-500').addClass('text-green-500');
                                $('#result').removeClass('hidden');
                            }

                            setTimeout(function() {
                                $('#code').val('');
                                $('#error-message').addClass('hidden');
                                $('#result').addClass('hidden');
                            }, 5000); // Close after 5sc
                        },
                        error: function(xhr) {
                            console.log('Error:', xhr.responseText);
                            $('#error-message').text("Code yang Anda masukkan salah").removeClass('hidden');
                            $('#result').addClass('hidden');
                        }
                    });
                }
            });

            // Show logs modal
            $('#logs-button').click(function() {
                $('#logs-modal').removeClass('hidden');
                fetchLogs();
            });

            // Close logs modal
            $('#close-logs').click(function() {
                $('#logs-modal').addClass('hidden');
            });

            function fetchLogs() {
                $.ajax({
                    url: '/logs',
                    method: 'GET',
                    success: function(data) {
                        let logsHtml = '';
                        if (data.length > 0) {
                            data.forEach(function(log) {
                                logsHtml += `<tr>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">${log.code}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">${log.gate}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">${log.name}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">${log.group}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">${log.date}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">${log.time}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">${log.state}</td>
                                </tr>`;
                            });
                        } else {
                            logsHtml = '<tr><td colspan="7" class="px-6 py-4 text-center text-gray-500">No logs found</td></tr>';
                        }
                        $('#logs-table-body').html(logsHtml);
                    },
                    error: function(xhr) {
                        console.log('Error:', xhr.responseText);
                    }
                });
            }
        });
    </script>
</body>

</html>
