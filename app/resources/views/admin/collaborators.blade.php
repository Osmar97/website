<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Dashboard</title>
        
        {{-- CSS --}}
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/dashboard.css">

        {{-- Icons --}}
        <script src="https://kit.fontawesome.com/fd2015e895.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="img/menuImages/Logo.png" type="image/x-icon">

        {{-- Google Fonts --}}
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        {{-- JS --}}
        <script src="./js/search.js" defer></script>

    </head>

    <body>

        @include('admin/contentHTML/sidebar')

        <main>

            @include('admin/contentHTML/header')

            <h1>Collaborators</h1>

            <table class="styled-table">

                <thead>
                    <tr>
                        <th>Collaborator ID </th>
                        <th>Collaborator Image</th>
                        <th>Collaborator Name</th>
                        <th>Creation Day</th>
                        <th>Last update</th>
                        <th>Edit Collaborator</th>
                        <th>Collaborator State</th>


                    </tr>
                </thead>

                <tbody>
                    

                    @foreach($funcionarios as $funcionario)
                    <tr>

                        <td>{{ $funcionario->id}} </td>
                        <td>
                            @if($funcionario->imgFuncionario == "")
                                <img class="round" src="img/about/team/profile.png" alt="user"/>
                            @else
                                <img class="round" src="img/about/team/{{$funcionario->imgFuncionario}}" alt="user" />
                            @endif
                        </td>
                        <td>
                            <p> {{ $funcionario->nomeFuncionario}} </p>
                        </td>

                        <td>
                            <p>{{ $funcionario->created_at}}</p>    
                        </td>

                        <td>
                            <?php
                                $dateUpdated = $funcionario->updated_at;

                                if($dateUpdated == ""){
                            ?>
                            <p> Não tem data de atualização </p>
                            <?php
                                }else{
                            ?>
                            <p> {{ $funcionario->updated_at}} </p>
                            <?php
                                }
                            ?>  

                            <p>{{ $funcionario->updated_at}}</p>    
                        </td>

                        <td>
                            <form action="" method="post">
                                <input type="hidden" value="{{ $funcionario->id}}">
                                <input type="submit" value="Update">
                            </form>
                        </td>

                        <td>
                            <form action="" method="post">
                                <select name="state" id="">
                                    <option value="">Active</option>
                                    <option value="">Inactive</option>
                                </select>
                            </form>
                        </td>
                         
                    </tr>
                    @endforeach
                    <!-- and so on... -->
                </tbody>

            </table>

        </main>


    </body>

</html>
